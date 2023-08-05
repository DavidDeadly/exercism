export class Anagram {
  private targetWordSplitted: string[];
  private numLettersMap: Map<string, number> = new Map();

  constructor(input: string) {
    const lowTarget = input.toLowerCase().split("");

    lowTarget.forEach(letter => {
      if(!this.numLettersMap.has(letter)) 
        return this.numLettersMap.set(letter, 1);

      const numLetters = this.numLettersMap.get(letter)!;
      this.numLettersMap.set(letter, numLetters + 1);
      return;
    })
    this.targetWordSplitted = lowTarget;
  }

  public matches(...potentials: string[]): string[] {
    return potentials.filter(potential => this.isAnagram(potential));
  }

  private isAnagram(potential: string): boolean {
    const lowPortential = potential.toLowerCase();
    const lowTarget = this.targetWordSplitted.join("");

    if(lowPortential.length !== lowTarget.length) return false;
    if(lowPortential === lowTarget) return false;

    return this.hasEveryLetterExactTimes(lowPortential);
  }

  private hasEveryLetterExactTimes(potential: string): boolean {
    return this.targetWordSplitted.every(letter => {
      const letterRegex = new RegExp(letter, "g");
      const matches = [...potential.matchAll(letterRegex)];

      return matches.length === this.numLettersMap.get(letter);
    });
  }
}

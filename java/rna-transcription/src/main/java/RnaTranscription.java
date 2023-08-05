import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

class RnaTranscription {
    private static Map<String, String> dnaToRna = new HashMap<>() {
        {
            put("C", "G");
            put("G", "C");
            put("T", "A");
            put("A", "U");
        }
    };

    String transcribe(String dnaStrand) {
        if (dnaStrand.isEmpty())
            return "";

        List<String> dnaArray = Arrays.asList(dnaStrand.split(""));

        var response = dnaArray.stream().map(dnaToRna::get).collect(Collectors.joining());

        System.out.println(response);
        return response;
    }

}

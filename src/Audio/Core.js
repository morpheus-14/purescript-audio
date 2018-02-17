exports["playFrequency_"] = function (note) {
    console.log("play")
    return function (duration) {
        return function(onSuccess){
            var ac = window._pursAudioContext || new AudioContext() 
            var osc = ac.createOscillator()
            osc.connect(ac.destination)
            osc.frequency.setValueAtTime(note, ac.currentTime)
            osc.type = "sine"
            osc.start()
            osc.stop(ac.currentTime + duration)
            onSuccess(function(){})();
            return function() {
            }
        }
    }
}

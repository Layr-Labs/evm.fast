import InitECandidate.Proofs.FrontendStages.Globals.InitializersData
namespace InitECandidate.Proofs.FrontendStages
open Flapjack Flapjack.Pancake.PanLang
open Declarations
def generatedMain : DeclHOL 64 := .function
  { name := globalStart, inline := false, exported := false, params := [],
    body := .seq (nestedSeqHOL globalInitializers) (.call none globalNewStart []),
    returnShape := .one }

end InitECandidate.Proofs.FrontendStages

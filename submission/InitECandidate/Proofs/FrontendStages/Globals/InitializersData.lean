import InitECandidate.Proofs.FrontendStages.Globals.Context
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack Flapjack.Pancake.PanLang
def globalInitializers : List (ProgHOL 64) :=
  (compileDecsExactHOL globalInitial globalDeclarations).1

end InitECandidate.Proofs.FrontendStages.Declarations

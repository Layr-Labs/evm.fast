import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data71
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate55
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody71_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qr"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "qr"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "qr"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "qr")])

def globalBody71_1 : Prog (BitVec 64) :=
.decCall ("qr") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_divmod") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]) globalBody71_0

def globalData71 : Decl (BitVec 64) :=
.function { name := "u256_div", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody71_1, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput71 := Pancake.PanLang.declToHOL globalData71
end InitECandidate.Proofs.FrontendStages.Declarations

import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data716
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate700
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody716_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "c"), Flapjack.Exp.const 1#64])

def globalBody716_1 : Prog (BitVec 64) :=
.decCall ("c") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_from_mont") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) globalBody716_0

def globalData716 : Decl (BitVec 64) :=
.function { name := "bls_fp_sgn0", inline := false, exported := false, params := [("a",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := globalBody716_1, returnShape := (Flapjack.Shape.one) }
def globalOutput716 := Pancake.PanLang.declToHOL globalData716
end InitECandidate.Proofs.FrontendStages.Declarations

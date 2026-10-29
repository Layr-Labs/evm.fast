import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data656
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate638
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody656_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "fq_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "i",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 12812017116984455391#64, Flapjack.Exp.const 7129779742913871286#64,
        Flapjack.Exp.const 17257524443456604923#64, Flapjack.Exp.const 2377177743836652868#64]]

def globalBody656_1 : Prog (BitVec 64) :=
.decCall ("i") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("modinv_bin") ([Flapjack.Exp.var Flapjack.VarKind.local "a",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
      Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]) globalBody656_0

def globalData656 : Decl (BitVec 64) :=
.function { name := "fq_inv", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody656_1, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput656 := Pancake.PanLang.declToHOL globalData656
end InitECandidate.Proofs.FrontendStages.Declarations

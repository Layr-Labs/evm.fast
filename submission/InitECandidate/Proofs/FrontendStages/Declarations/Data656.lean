import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify640
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body656_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "fq_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "i",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 12812017116984455391#64, Flapjack.Exp.const 7129779742913871286#64,
        Flapjack.Exp.const 17257524443456604923#64, Flapjack.Exp.const 2377177743836652868#64]]

def body656_1 : Prog (BitVec 64) :=
.decCall ("i") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("modinv_bin") ([Flapjack.Exp.var Flapjack.VarKind.local "a",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
      Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]) body656_0

def originalData656 : Decl (BitVec 64) :=
.function { name := "fq_inv", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body656_1, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData656 : Decl (BitVec 64) :=
.function { name := "fq_inv", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body656_1, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original656 := Pancake.PanLang.declToHOL originalData656
def simplified656 := Pancake.PanLang.declToHOL simplifiedData656
end InitECandidate.Proofs.FrontendStages.Declarations

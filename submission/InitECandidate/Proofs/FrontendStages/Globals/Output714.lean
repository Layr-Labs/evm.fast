import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data714
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate698
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody714_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "bls_fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "r",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 17098105564519244256#64, Flapjack.Exp.const 3557706395579559416#64,
        Flapjack.Exp.const 11120290361046346205#64, Flapjack.Exp.const 3801124253586036577#64,
        Flapjack.Exp.const 2671430854784468776#64, Flapjack.Exp.const 767358375875140941#64]]

def globalBody714_1 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_inv_raw") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) globalBody714_0

def globalData714 : Decl (BitVec 64) :=
.function { name := "bls_fp_inv", inline := false, exported := false, params := [("a",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := globalBody714_1, returnShape := (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) }
def globalOutput714 := Pancake.PanLang.declToHOL globalData714
end InitECandidate.Proofs.FrontendStages.Declarations

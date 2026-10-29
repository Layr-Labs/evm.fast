import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data648
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate630
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody648_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody648_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody648_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 1#64)) globalBody648_0 globalBody648_1

def globalBody648_3 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_sub"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
        Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64],
    Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalBody648_4 : Prog (BitVec 64) :=
.seq globalBody648_2 globalBody648_3

def globalBody648_5 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) globalBody648_4

def globalData648 : Decl (BitVec 64) :=
.function { name := "fq_neg", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody648_5, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput648 := Pancake.PanLang.declToHOL globalData648
end InitECandidate.Proofs.FrontendStages.Declarations

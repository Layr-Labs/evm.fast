import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data870
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate837
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody870_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 200#64]

def globalBody870_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "te")

def globalBody870_2 : Prog (BitVec 64) :=
.seq globalBody870_0 globalBody870_1

def globalBody870_3 : Prog (BitVec 64) :=
.decCall ("te") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 200#64]) globalBody870_2

def globalData870 : Decl (BitVec 64) :=
.function { name := "te_new", inline := false, exported := false, params := [], body := globalBody870_3, returnShape := (Flapjack.Shape.one) }
def globalOutput870 := Pancake.PanLang.declToHOL globalData870
end InitECandidate.Proofs.FrontendStages.Declarations

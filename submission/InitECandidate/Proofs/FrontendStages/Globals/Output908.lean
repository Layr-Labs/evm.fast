import InitECandidate.Proofs.FrontendStages.Declarations.Data908
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody908_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 200#64]

def globalBody908_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "te")

def globalBody908_2 : Prog (BitVec 64) :=
.seq globalBody908_0 globalBody908_1

def globalBody908_3 : Prog (BitVec 64) :=
.decCall ("te") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 200#64]) globalBody908_2

def globalData908 : Decl (BitVec 64) := .function { name := "te_new", inline := false, exported := false, params := [], body := globalBody908_3, returnShape := (Flapjack.Shape.one) }
def globalOutput908 := Pancake.PanLang.declToHOL globalData908
end InitECandidate.Proofs.FrontendStages.Declarations

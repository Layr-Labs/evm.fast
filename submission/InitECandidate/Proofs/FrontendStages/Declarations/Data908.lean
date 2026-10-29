import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify892
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body908_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 200#64]

def body908_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "te")

def body908_2 : Prog (BitVec 64) :=
.seq body908_0 body908_1

def body908_3 : Prog (BitVec 64) :=
.decCall ("te") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 200#64]) body908_2

def originalData908 : Decl (BitVec 64) :=
.function { name := "te_new", inline := false, exported := false, params := [], body := body908_3, returnShape := (Flapjack.Shape.one) }
def simplifiedData908 : Decl (BitVec 64) :=
.function { name := "te_new", inline := false, exported := false, params := [], body := body908_3, returnShape := (Flapjack.Shape.one) }
def original908 := Pancake.PanLang.declToHOL originalData908
def simplified908 := Pancake.PanLang.declToHOL simplifiedData908
end InitECandidate.Proofs.FrontendStages.Declarations

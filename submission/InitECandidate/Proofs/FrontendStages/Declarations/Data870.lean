import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify854
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body870_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 200#64]

def body870_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "te")

def body870_2 : Prog (BitVec 64) :=
.seq body870_0 body870_1

def body870_3 : Prog (BitVec 64) :=
.decCall ("te") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 200#64]) body870_2

def originalData870 : Decl (BitVec 64) :=
.function { name := "te_new", inline := false, exported := false, params := [], body := body870_3, returnShape := (Flapjack.Shape.one) }
def simplifiedData870 : Decl (BitVec 64) :=
.function { name := "te_new", inline := false, exported := false, params := [], body := body870_3, returnShape := (Flapjack.Shape.one) }
def original870 := Pancake.PanLang.declToHOL originalData870
def simplified870 := Pancake.PanLang.declToHOL simplifiedData870
end InitECandidate.Proofs.FrontendStages.Declarations

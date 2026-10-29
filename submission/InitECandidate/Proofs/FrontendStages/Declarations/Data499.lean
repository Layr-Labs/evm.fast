import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify483
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body499_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def body499_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body499_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body499_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body499_4 : Prog (BitVec 64) :=
.seq body499_2 body499_3

def body499_5 : Prog (BitVec 64) :=
.seq body499_1 body499_4

def body499_6 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_shr") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "n"]) body499_5

def body499_7 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "sh"]) body499_6

def body499_8 : Prog (BitVec 64) :=
.seq body499_0 body499_7

def body499_9 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body499_8

def body499_10 : Prog (BitVec 64) :=
.decCall ("sh") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body499_9

def body499_11 : Prog (BitVec 64) :=
.seq body499_1 body499_2

def body499_12 : Prog (BitVec 64) :=
.seq body499_11 body499_3

def body499_13 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_shr") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "n"]) body499_12

def body499_14 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "sh"]) body499_13

def body499_15 : Prog (BitVec 64) :=
.seq body499_0 body499_14

def body499_16 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body499_15

def body499_17 : Prog (BitVec 64) :=
.decCall ("sh") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body499_16

def originalData499 : Decl (BitVec 64) :=
.function { name := "op_shr", inline := false, exported := false, params := [], body := body499_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData499 : Decl (BitVec 64) :=
.function { name := "op_shr", inline := false, exported := false, params := [], body := body499_17, returnShape := (Flapjack.Shape.one) }
def original499 := Pancake.PanLang.declToHOL originalData499
def simplified499 := Pancake.PanLang.declToHOL simplifiedData499
end InitECandidate.Proofs.FrontendStages.Declarations

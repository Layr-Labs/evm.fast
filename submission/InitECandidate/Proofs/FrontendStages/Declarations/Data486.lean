import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify470
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body486_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 5#64]

def body486_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body486_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body486_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body486_4 : Prog (BitVec 64) :=
.seq body486_2 body486_3

def body486_5 : Prog (BitVec 64) :=
.seq body486_1 body486_4

def body486_6 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_signextend") ([Flapjack.Exp.var Flapjack.VarKind.local "bw", Flapjack.Exp.var Flapjack.VarKind.local "x"]) body486_5

def body486_7 : Prog (BitVec 64) :=
.decCall ("bw") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "b"]) body486_6

def body486_8 : Prog (BitVec 64) :=
.seq body486_0 body486_7

def body486_9 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body486_8

def body486_10 : Prog (BitVec 64) :=
.decCall ("b") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body486_9

def body486_11 : Prog (BitVec 64) :=
.seq body486_1 body486_2

def body486_12 : Prog (BitVec 64) :=
.seq body486_11 body486_3

def body486_13 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_signextend") ([Flapjack.Exp.var Flapjack.VarKind.local "bw", Flapjack.Exp.var Flapjack.VarKind.local "x"]) body486_12

def body486_14 : Prog (BitVec 64) :=
.decCall ("bw") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "b"]) body486_13

def body486_15 : Prog (BitVec 64) :=
.seq body486_0 body486_14

def body486_16 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body486_15

def body486_17 : Prog (BitVec 64) :=
.decCall ("b") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body486_16

def originalData486 : Decl (BitVec 64) :=
.function { name := "op_signextend", inline := false, exported := false, params := [], body := body486_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData486 : Decl (BitVec 64) :=
.function { name := "op_signextend", inline := false, exported := false, params := [], body := body486_17, returnShape := (Flapjack.Shape.one) }
def original486 := Pancake.PanLang.declToHOL originalData486
def simplified486 := Pancake.PanLang.declToHOL simplifiedData486
end InitECandidate.Proofs.FrontendStages.Declarations

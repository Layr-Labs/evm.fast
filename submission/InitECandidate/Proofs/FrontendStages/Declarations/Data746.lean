import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify730
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body746_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul_xi"
  [Flapjack.Exp.var Flapjack.VarKind.local "t",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 192#64]]

def body746_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 96#64]]

def body746_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body746_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "t"]

def body746_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body746_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body746_6 : Prog (BitVec 64) :=
.seq body746_4 body746_5

def body746_7 : Prog (BitVec 64) :=
.seq body746_3 body746_6

def body746_8 : Prog (BitVec 64) :=
.seq body746_2 body746_7

def body746_9 : Prog (BitVec 64) :=
.seq body746_1 body746_8

def body746_10 : Prog (BitVec 64) :=
.seq body746_0 body746_9

def body746_11 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body746_10

def body746_12 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body746_11

def body746_13 : Prog (BitVec 64) :=
.seq body746_0 body746_1

def body746_14 : Prog (BitVec 64) :=
.seq body746_13 body746_2

def body746_15 : Prog (BitVec 64) :=
.seq body746_14 body746_3

def body746_16 : Prog (BitVec 64) :=
.seq body746_15 body746_4

def body746_17 : Prog (BitVec 64) :=
.seq body746_16 body746_5

def body746_18 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body746_17

def body746_19 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body746_18

def originalData746 : Decl (BitVec 64) :=
.function { name := "fp6_mul_v", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body746_12, returnShape := (Flapjack.Shape.one) }
def simplifiedData746 : Decl (BitVec 64) :=
.function { name := "fp6_mul_v", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body746_19, returnShape := (Flapjack.Shape.one) }
def original746 := Pancake.PanLang.declToHOL originalData746
def simplified746 := Pancake.PanLang.declToHOL simplifiedData746
end InitECandidate.Proofs.FrontendStages.Declarations

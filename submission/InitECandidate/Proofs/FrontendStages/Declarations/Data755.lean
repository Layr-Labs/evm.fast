import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify739
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body755_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_conj"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body755_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_conj"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 96#64]]

def body755_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 960#64]]

def body755_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_conj"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 192#64]]

def body755_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1152#64]]

def body755_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_conj"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 288#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 288#64]]

def body755_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 288#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 288#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 864#64]]

def body755_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_conj"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 384#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 384#64]]

def body755_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 384#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 384#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1056#64]]

def body755_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_conj"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 480#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 480#64]]

def body755_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 480#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 480#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1248#64]]

def body755_11 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body755_12 : Prog (BitVec 64) :=
.seq body755_10 body755_11

def body755_13 : Prog (BitVec 64) :=
.seq body755_9 body755_12

def body755_14 : Prog (BitVec 64) :=
.seq body755_8 body755_13

def body755_15 : Prog (BitVec 64) :=
.seq body755_7 body755_14

def body755_16 : Prog (BitVec 64) :=
.seq body755_6 body755_15

def body755_17 : Prog (BitVec 64) :=
.seq body755_5 body755_16

def body755_18 : Prog (BitVec 64) :=
.seq body755_4 body755_17

def body755_19 : Prog (BitVec 64) :=
.seq body755_3 body755_18

def body755_20 : Prog (BitVec 64) :=
.seq body755_2 body755_19

def body755_21 : Prog (BitVec 64) :=
.seq body755_1 body755_20

def body755_22 : Prog (BitVec 64) :=
.seq body755_0 body755_21

def body755_23 : Prog (BitVec 64) :=
.seq body755_0 body755_1

def body755_24 : Prog (BitVec 64) :=
.seq body755_23 body755_2

def body755_25 : Prog (BitVec 64) :=
.seq body755_24 body755_3

def body755_26 : Prog (BitVec 64) :=
.seq body755_25 body755_4

def body755_27 : Prog (BitVec 64) :=
.seq body755_26 body755_5

def body755_28 : Prog (BitVec 64) :=
.seq body755_27 body755_6

def body755_29 : Prog (BitVec 64) :=
.seq body755_28 body755_7

def body755_30 : Prog (BitVec 64) :=
.seq body755_29 body755_8

def body755_31 : Prog (BitVec 64) :=
.seq body755_30 body755_9

def body755_32 : Prog (BitVec 64) :=
.seq body755_31 body755_10

def body755_33 : Prog (BitVec 64) :=
.seq body755_32 body755_11

def originalData755 : Decl (BitVec 64) :=
.function { name := "fp12_frob", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body755_22, returnShape := (Flapjack.Shape.one) }
def simplifiedData755 : Decl (BitVec 64) :=
.function { name := "fp12_frob", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body755_33, returnShape := (Flapjack.Shape.one) }
def original755 := Pancake.PanLang.declToHOL originalData755
def simplified755 := Pancake.PanLang.declToHOL simplifiedData755
end InitECandidate.Proofs.FrontendStages.Declarations

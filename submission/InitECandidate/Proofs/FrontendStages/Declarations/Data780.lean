import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify764
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body780_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body780_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body780_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) body780_0 body780_1

def body780_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "ok"), none)) "bls_fp_decode64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 64#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 48#64]]

def body780_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "ok"), none)) "bls_fp_decode64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 128#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64]]

def body780_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "ok"), none)) "bls_fp_decode64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64, Flapjack.Exp.const 48#64]]

def body780_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_set_zero"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64]]

def body780_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body780_8 : Prog (BitVec 64) :=
.seq body780_6 body780_7

def body780_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "xz") (Flapjack.Exp.const 1#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "yz") (Flapjack.Exp.const 1#64))]) body780_8 body780_1

def body780_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_set_one"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64]]

def body780_11 : Prog (BitVec 64) :=
Flapjack.Prog.call none "g2_on_curve"
  [Flapjack.Exp.var Flapjack.VarKind.local "r",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64]]

def body780_12 : Prog (BitVec 64) :=
.seq body780_10 body780_11

def body780_13 : Prog (BitVec 64) :=
.seq body780_9 body780_12

def body780_14 : Prog (BitVec 64) :=
.decCall ("yz") (Flapjack.Shape.one) ("fp2_is_zero") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64]]) body780_13

def body780_15 : Prog (BitVec 64) :=
.decCall ("xz") (Flapjack.Shape.one) ("fp2_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "r"]) body780_14

def body780_16 : Prog (BitVec 64) :=
.seq body780_2 body780_15

def body780_17 : Prog (BitVec 64) :=
.seq body780_5 body780_16

def body780_18 : Prog (BitVec 64) :=
.seq body780_2 body780_17

def body780_19 : Prog (BitVec 64) :=
.seq body780_4 body780_18

def body780_20 : Prog (BitVec 64) :=
.seq body780_2 body780_19

def body780_21 : Prog (BitVec 64) :=
.seq body780_3 body780_20

def body780_22 : Prog (BitVec 64) :=
.seq body780_2 body780_21

def body780_23 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("bls_fp_decode64") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "r"]) body780_22

def body780_24 : Prog (BitVec 64) :=
.seq body780_2 body780_3

def body780_25 : Prog (BitVec 64) :=
.seq body780_24 body780_2

def body780_26 : Prog (BitVec 64) :=
.seq body780_25 body780_4

def body780_27 : Prog (BitVec 64) :=
.seq body780_26 body780_2

def body780_28 : Prog (BitVec 64) :=
.seq body780_27 body780_5

def body780_29 : Prog (BitVec 64) :=
.seq body780_28 body780_2

def body780_30 : Prog (BitVec 64) :=
.seq body780_9 body780_10

def body780_31 : Prog (BitVec 64) :=
.seq body780_30 body780_11

def body780_32 : Prog (BitVec 64) :=
.decCall ("yz") (Flapjack.Shape.one) ("fp2_is_zero") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64]]) body780_31

def body780_33 : Prog (BitVec 64) :=
.decCall ("xz") (Flapjack.Shape.one) ("fp2_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "r"]) body780_32

def body780_34 : Prog (BitVec 64) :=
.seq body780_29 body780_33

def body780_35 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("bls_fp_decode64") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "r"]) body780_34

def originalData780 : Decl (BitVec 64) :=
.function { name := "g2_decode", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("r", Flapjack.Shape.one)], body := body780_23, returnShape := (Flapjack.Shape.one) }
def simplifiedData780 : Decl (BitVec 64) :=
.function { name := "g2_decode", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("r", Flapjack.Shape.one)], body := body780_35, returnShape := (Flapjack.Shape.one) }
def original780 := Pancake.PanLang.declToHOL originalData780
def simplified780 := Pancake.PanLang.declToHOL simplifiedData780
end InitECandidate.Proofs.FrontendStages.Declarations

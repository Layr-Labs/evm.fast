import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify80
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body96_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_state_init" [Flapjack.Exp.var Flapjack.VarKind.global "sha_st"]

def body96_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_block"
  [Flapjack.Exp.var Flapjack.VarKind.global "sha_st",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"]]

def body96_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 64#64])

def body96_3 : Prog (BitVec 64) :=
.seq body96_1 body96_2

def body96_4 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "len")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 64#64])) body96_3

def body96_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.global "sha_pad", Flapjack.Exp.const 128#64]

def body96_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.global "sha_pad",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"],
    Flapjack.Exp.var Flapjack.VarKind.local "rem"]

def body96_7 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "sha_pad", Flapjack.Exp.var Flapjack.VarKind.local "rem"])
  (Flapjack.Exp.const 128#64)

def body96_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total" (Flapjack.Exp.const 128#64)

def body96_9 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body96_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "rem") (Flapjack.Exp.const 56#64)) body96_8 body96_9

def body96_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.global "sha_pad", Flapjack.Exp.var Flapjack.VarKind.local "total"],
        Flapjack.Exp.const 8#64],
    Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "len") (Flapjack.Exp.const 3#64)]

def body96_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_block"
  [Flapjack.Exp.var Flapjack.VarKind.global "sha_st", Flapjack.Exp.var Flapjack.VarKind.global "sha_pad"]

def body96_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_block"
  [Flapjack.Exp.var Flapjack.VarKind.global "sha_st",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "sha_pad", Flapjack.Exp.const 64#64]]

def body96_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "total") (Flapjack.Exp.const 128#64)) body96_13 body96_9

def body96_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_finish"
  [Flapjack.Exp.var Flapjack.VarKind.global "sha_st", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body96_16 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body96_17 : Prog (BitVec 64) :=
.seq body96_15 body96_16

def body96_18 : Prog (BitVec 64) :=
.seq body96_14 body96_17

def body96_19 : Prog (BitVec 64) :=
.seq body96_12 body96_18

def body96_20 : Prog (BitVec 64) :=
.seq body96_11 body96_19

def body96_21 : Prog (BitVec 64) :=
.seq body96_10 body96_20

def body96_22 : Prog (BitVec 64) :=
.dec ("total") (Flapjack.Shape.one) (Flapjack.Exp.const 64#64) body96_21

def body96_23 : Prog (BitVec 64) :=
.seq body96_7 body96_22

def body96_24 : Prog (BitVec 64) :=
.seq body96_6 body96_23

def body96_25 : Prog (BitVec 64) :=
.seq body96_5 body96_24

def body96_26 : Prog (BitVec 64) :=
.dec ("rem") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.var Flapjack.VarKind.local "i"]) body96_25

def body96_27 : Prog (BitVec 64) :=
.seq body96_4 body96_26

def body96_28 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body96_27

def body96_29 : Prog (BitVec 64) :=
.seq body96_0 body96_28

def body96_30 : Prog (BitVec 64) :=
.seq body96_5 body96_6

def body96_31 : Prog (BitVec 64) :=
.seq body96_30 body96_7

def body96_32 : Prog (BitVec 64) :=
.seq body96_10 body96_11

def body96_33 : Prog (BitVec 64) :=
.seq body96_32 body96_12

def body96_34 : Prog (BitVec 64) :=
.seq body96_33 body96_14

def body96_35 : Prog (BitVec 64) :=
.seq body96_34 body96_15

def body96_36 : Prog (BitVec 64) :=
.seq body96_35 body96_16

def body96_37 : Prog (BitVec 64) :=
.dec ("total") (Flapjack.Shape.one) (Flapjack.Exp.const 64#64) body96_36

def body96_38 : Prog (BitVec 64) :=
.seq body96_31 body96_37

def body96_39 : Prog (BitVec 64) :=
.dec ("rem") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.var Flapjack.VarKind.local "i"]) body96_38

def body96_40 : Prog (BitVec 64) :=
.seq body96_4 body96_39

def body96_41 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body96_40

def body96_42 : Prog (BitVec 64) :=
.seq body96_0 body96_41

def originalData96 : Decl (BitVec 64) :=
.function { name := "sha256", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body96_29, returnShape := (Flapjack.Shape.one) }
def simplifiedData96 : Decl (BitVec 64) :=
.function { name := "sha256", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body96_42, returnShape := (Flapjack.Shape.one) }
def original96 := Pancake.PanLang.declToHOL originalData96
def simplified96 := Pancake.PanLang.declToHOL simplifiedData96
end InitECandidate.Proofs.FrontendStages.Declarations

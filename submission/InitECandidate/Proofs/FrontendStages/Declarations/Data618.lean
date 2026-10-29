import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify602
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body618_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.global "rmd_h") (Flapjack.Exp.const 1732584193#64)

def body618_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_h", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 4023233417#64)

def body618_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_h", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 2562383102#64)

def body618_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_h", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 271733878#64)

def body618_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_h", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 3285377520#64)

def body618_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ripemd160_block"
  [Flapjack.Exp.var Flapjack.VarKind.global "rmd_h",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"]]

def body618_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 64#64])

def body618_7 : Prog (BitVec 64) :=
.seq body618_5 body618_6

def body618_8 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 64#64])) body618_7

def body618_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.global "rmd_pad", Flapjack.Exp.const 128#64]

def body618_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.global "rmd_pad",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"],
    Flapjack.Exp.var Flapjack.VarKind.local "rem"]

def body618_11 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "rmd_pad", Flapjack.Exp.var Flapjack.VarKind.local "rem"])
  (Flapjack.Exp.const 128#64)

def body618_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total" (Flapjack.Exp.const 128#64)

def body618_13 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body618_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "rem") (Flapjack.Exp.const 56#64)) body618_12 body618_13

def body618_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_le64"
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.global "rmd_pad", Flapjack.Exp.var Flapjack.VarKind.local "total"],
        Flapjack.Exp.const 8#64],
    Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 3#64)]

def body618_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ripemd160_block"
  [Flapjack.Exp.var Flapjack.VarKind.global "rmd_h", Flapjack.Exp.var Flapjack.VarKind.global "rmd_pad"]

def body618_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ripemd160_block"
  [Flapjack.Exp.var Flapjack.VarKind.global "rmd_h",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "rmd_pad", Flapjack.Exp.const 64#64]]

def body618_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "total") (Flapjack.Exp.const 128#64)) body618_17 body618_13

def body618_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def body618_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_le32"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "out",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 4#64]],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.global "rmd_h",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])]

def body618_21 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body618_22 : Prog (BitVec 64) :=
.seq body618_20 body618_21

def body618_23 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 5#64)) body618_22

def body618_24 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body618_25 : Prog (BitVec 64) :=
.seq body618_23 body618_24

def body618_26 : Prog (BitVec 64) :=
.seq body618_19 body618_25

def body618_27 : Prog (BitVec 64) :=
.seq body618_18 body618_26

def body618_28 : Prog (BitVec 64) :=
.seq body618_16 body618_27

def body618_29 : Prog (BitVec 64) :=
.seq body618_15 body618_28

def body618_30 : Prog (BitVec 64) :=
.seq body618_14 body618_29

def body618_31 : Prog (BitVec 64) :=
.dec ("total") (Flapjack.Shape.one) (Flapjack.Exp.const 64#64) body618_30

def body618_32 : Prog (BitVec 64) :=
.seq body618_11 body618_31

def body618_33 : Prog (BitVec 64) :=
.seq body618_10 body618_32

def body618_34 : Prog (BitVec 64) :=
.seq body618_9 body618_33

def body618_35 : Prog (BitVec 64) :=
.dec ("rem") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "i"]) body618_34

def body618_36 : Prog (BitVec 64) :=
.seq body618_8 body618_35

def body618_37 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body618_36

def body618_38 : Prog (BitVec 64) :=
.seq body618_4 body618_37

def body618_39 : Prog (BitVec 64) :=
.seq body618_3 body618_38

def body618_40 : Prog (BitVec 64) :=
.seq body618_2 body618_39

def body618_41 : Prog (BitVec 64) :=
.seq body618_1 body618_40

def body618_42 : Prog (BitVec 64) :=
.seq body618_0 body618_41

def body618_43 : Prog (BitVec 64) :=
.seq body618_0 body618_1

def body618_44 : Prog (BitVec 64) :=
.seq body618_43 body618_2

def body618_45 : Prog (BitVec 64) :=
.seq body618_44 body618_3

def body618_46 : Prog (BitVec 64) :=
.seq body618_45 body618_4

def body618_47 : Prog (BitVec 64) :=
.seq body618_9 body618_10

def body618_48 : Prog (BitVec 64) :=
.seq body618_47 body618_11

def body618_49 : Prog (BitVec 64) :=
.seq body618_14 body618_15

def body618_50 : Prog (BitVec 64) :=
.seq body618_49 body618_16

def body618_51 : Prog (BitVec 64) :=
.seq body618_50 body618_18

def body618_52 : Prog (BitVec 64) :=
.seq body618_51 body618_19

def body618_53 : Prog (BitVec 64) :=
.seq body618_52 body618_23

def body618_54 : Prog (BitVec 64) :=
.seq body618_53 body618_24

def body618_55 : Prog (BitVec 64) :=
.dec ("total") (Flapjack.Shape.one) (Flapjack.Exp.const 64#64) body618_54

def body618_56 : Prog (BitVec 64) :=
.seq body618_48 body618_55

def body618_57 : Prog (BitVec 64) :=
.dec ("rem") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "i"]) body618_56

def body618_58 : Prog (BitVec 64) :=
.seq body618_8 body618_57

def body618_59 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body618_58

def body618_60 : Prog (BitVec 64) :=
.seq body618_46 body618_59

def originalData618 : Decl (BitVec 64) :=
.function { name := "ripemd160", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body618_42, returnShape := (Flapjack.Shape.one) }
def simplifiedData618 : Decl (BitVec 64) :=
.function { name := "ripemd160", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body618_60, returnShape := (Flapjack.Shape.one) }
def original618 := Pancake.PanLang.declToHOL originalData618
def simplified618 := Pancake.PanLang.declToHOL simplifiedData618
end InitECandidate.Proofs.FrontendStages.Declarations

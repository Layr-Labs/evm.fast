import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify2
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body18_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.const 0#64)

def body18_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 0#64)

def body18_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 0#64)

def body18_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 0#64)

def body18_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64])

def body18_5 : Prog (BitVec 64) :=
.seq body18_3 body18_4

def body18_6 : Prog (BitVec 64) :=
.seq body18_2 body18_5

def body18_7 : Prog (BitVec 64) :=
.seq body18_1 body18_6

def body18_8 : Prog (BitVec 64) :=
.seq body18_0 body18_7

def body18_9 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64])) body18_8

def body18_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])

def body18_11 : Prog (BitVec 64) :=
.seq body18_0 body18_10

def body18_12 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])) body18_11

def body18_13 : Prog (BitVec 64) :=
.seq body18_9 body18_12

def body18_14 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body18_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 0#64)) body18_13 body18_14

def body18_16 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.const 0#64)

def body18_17 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 0#64)

def body18_18 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 2#64])
  (Flapjack.Exp.const 0#64)

def body18_19 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 3#64])
  (Flapjack.Exp.const 0#64)

def body18_20 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 4#64])
  (Flapjack.Exp.const 0#64)

def body18_21 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 5#64])
  (Flapjack.Exp.const 0#64)

def body18_22 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 6#64])
  (Flapjack.Exp.const 0#64)

def body18_23 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "i",
      Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 0#64)

def body18_24 : Prog (BitVec 64) :=
.seq body18_23 body18_10

def body18_25 : Prog (BitVec 64) :=
.seq body18_22 body18_24

def body18_26 : Prog (BitVec 64) :=
.seq body18_21 body18_25

def body18_27 : Prog (BitVec 64) :=
.seq body18_20 body18_26

def body18_28 : Prog (BitVec 64) :=
.seq body18_19 body18_27

def body18_29 : Prog (BitVec 64) :=
.seq body18_18 body18_28

def body18_30 : Prog (BitVec 64) :=
.seq body18_17 body18_29

def body18_31 : Prog (BitVec 64) :=
.seq body18_16 body18_30

def body18_32 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])) body18_31

def body18_33 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body18_34 : Prog (BitVec 64) :=
.seq body18_16 body18_33

def body18_35 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body18_34

def body18_36 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body18_37 : Prog (BitVec 64) :=
.seq body18_35 body18_36

def body18_38 : Prog (BitVec 64) :=
.seq body18_32 body18_37

def body18_39 : Prog (BitVec 64) :=
.seq body18_15 body18_38

def body18_40 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body18_39

def body18_41 : Prog (BitVec 64) :=
.seq body18_0 body18_1

def body18_42 : Prog (BitVec 64) :=
.seq body18_41 body18_2

def body18_43 : Prog (BitVec 64) :=
.seq body18_42 body18_3

def body18_44 : Prog (BitVec 64) :=
.seq body18_43 body18_4

def body18_45 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64])) body18_44

def body18_46 : Prog (BitVec 64) :=
.seq body18_45 body18_12

def body18_47 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 0#64)) body18_46 body18_14

def body18_48 : Prog (BitVec 64) :=
.seq body18_16 body18_17

def body18_49 : Prog (BitVec 64) :=
.seq body18_48 body18_18

def body18_50 : Prog (BitVec 64) :=
.seq body18_49 body18_19

def body18_51 : Prog (BitVec 64) :=
.seq body18_50 body18_20

def body18_52 : Prog (BitVec 64) :=
.seq body18_51 body18_21

def body18_53 : Prog (BitVec 64) :=
.seq body18_52 body18_22

def body18_54 : Prog (BitVec 64) :=
.seq body18_53 body18_23

def body18_55 : Prog (BitVec 64) :=
.seq body18_54 body18_10

def body18_56 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])) body18_55

def body18_57 : Prog (BitVec 64) :=
.seq body18_47 body18_56

def body18_58 : Prog (BitVec 64) :=
.seq body18_57 body18_35

def body18_59 : Prog (BitVec 64) :=
.seq body18_58 body18_36

def body18_60 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body18_59

def originalData18 : Decl (BitVec 64) :=
.function { name := "memzero", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body18_40, returnShape := (Flapjack.Shape.one) }
def simplifiedData18 : Decl (BitVec 64) :=
.function { name := "memzero", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body18_60, returnShape := (Flapjack.Shape.one) }
def original18 := Pancake.PanLang.declToHOL originalData18
def simplified18 := Pancake.PanLang.declToHOL simplifiedData18
end InitECandidate.Proofs.FrontendStages.Declarations

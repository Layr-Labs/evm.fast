import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify224
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body240_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 20#64)

def body240_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body240_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 96#64]))
  (Flapjack.Exp.const 1#64)) body240_0 body240_1

def body240_3 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 21#64)

def body240_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 208#64]))
  (Flapjack.Exp.var Flapjack.VarKind.local "ebg")) body240_3 body240_1

def body240_5 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 22#64)

def body240_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 104#64]))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 112#64]))) body240_5 body240_1

def body240_7 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 23#64)

def body240_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body240_7 body240_1

def body240_9 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 24#64)

def body240_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "parent", Flapjack.Exp.const 120#64]))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 120#64]))) body240_9 body240_1

def body240_11 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 25#64)

def body240_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 96#64]))
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "parent", Flapjack.Exp.const 96#64]),
      Flapjack.Exp.const 1#64])) body240_11 body240_1

def body240_13 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 26#64)

def body240_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 32#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 136#64]))) body240_13 body240_1

def body240_15 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 27#64)

def body240_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "dz") (Flapjack.Exp.const 0#64)) body240_15 body240_1

def body240_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 152#64]),
    Flapjack.Exp.var Flapjack.VarKind.global "hdr_zero8", Flapjack.Exp.const 8#64]

def body240_18 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 28#64)

def body240_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body240_18 body240_1

def body240_20 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "tmp") (Flapjack.Exp.const 192#64)

def body240_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp", Flapjack.Exp.const 1#64,
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tmp", Flapjack.Exp.const 32#64]]

def body240_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 16#64]),
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tmp", Flapjack.Exp.const 32#64],
    Flapjack.Exp.const 32#64]

def body240_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body240_24 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 29#64)

def body240_25 : Prog (BitVec 64) :=
.seq body240_23 body240_24

def body240_26 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body240_25 body240_1

def body240_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "header_hash"
  [Flapjack.Exp.var Flapjack.VarKind.local "parent", Flapjack.Exp.var Flapjack.VarKind.local "tmp"]

def body240_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 8#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "tmp", Flapjack.Exp.const 32#64]

def body240_29 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 30#64)

def body240_30 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body240_29 body240_1

def body240_31 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body240_32 : Prog (BitVec 64) :=
.seq body240_30 body240_31

def body240_33 : Prog (BitVec 64) :=
.seq body240_23 body240_32

def body240_34 : Prog (BitVec 64) :=
.seq body240_28 body240_33

def body240_35 : Prog (BitVec 64) :=
.seq body240_27 body240_34

def body240_36 : Prog (BitVec 64) :=
.seq body240_26 body240_35

def body240_37 : Prog (BitVec 64) :=
.seq body240_22 body240_36

def body240_38 : Prog (BitVec 64) :=
.seq body240_21 body240_37

def body240_39 : Prog (BitVec 64) :=
.seq body240_20 body240_38

def body240_40 : Prog (BitVec 64) :=
.decCall ("tmp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) body240_39

def body240_41 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body240_40

def body240_42 : Prog (BitVec 64) :=
.seq body240_19 body240_41

def body240_43 : Prog (BitVec 64) :=
.seq body240_17 body240_42

def body240_44 : Prog (BitVec 64) :=
.seq body240_16 body240_43

def body240_45 : Prog (BitVec 64) :=
.decCall ("dz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 64#64])]) body240_44

def body240_46 : Prog (BitVec 64) :=
.seq body240_14 body240_45

def body240_47 : Prog (BitVec 64) :=
.seq body240_12 body240_46

def body240_48 : Prog (BitVec 64) :=
.seq body240_10 body240_47

def body240_49 : Prog (BitVec 64) :=
.seq body240_8 body240_48

def body240_50 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "expected",
  Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 160#64])]) body240_49

def body240_51 : Prog (BitVec 64) :=
.decCall ("expected") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_base_fee_per_gas") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 104#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "parent", Flapjack.Exp.const 104#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "parent", Flapjack.Exp.const 112#64]),
  Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "parent", Flapjack.Exp.const 160#64])]) body240_50

def body240_52 : Prog (BitVec 64) :=
.seq body240_6 body240_51

def body240_53 : Prog (BitVec 64) :=
.seq body240_4 body240_52

def body240_54 : Prog (BitVec 64) :=
.decCall ("ebg") (Flapjack.Shape.one) ("calculate_excess_blob_gas") ([Flapjack.Exp.var Flapjack.VarKind.local "parent"]) body240_53

def body240_55 : Prog (BitVec 64) :=
.seq body240_2 body240_54

def body240_56 : Prog (BitVec 64) :=
.seq body240_4 body240_6

def body240_57 : Prog (BitVec 64) :=
.seq body240_8 body240_10

def body240_58 : Prog (BitVec 64) :=
.seq body240_57 body240_12

def body240_59 : Prog (BitVec 64) :=
.seq body240_58 body240_14

def body240_60 : Prog (BitVec 64) :=
.seq body240_16 body240_17

def body240_61 : Prog (BitVec 64) :=
.seq body240_60 body240_19

def body240_62 : Prog (BitVec 64) :=
.seq body240_20 body240_21

def body240_63 : Prog (BitVec 64) :=
.seq body240_62 body240_22

def body240_64 : Prog (BitVec 64) :=
.seq body240_63 body240_26

def body240_65 : Prog (BitVec 64) :=
.seq body240_64 body240_27

def body240_66 : Prog (BitVec 64) :=
.seq body240_65 body240_28

def body240_67 : Prog (BitVec 64) :=
.seq body240_66 body240_23

def body240_68 : Prog (BitVec 64) :=
.seq body240_67 body240_30

def body240_69 : Prog (BitVec 64) :=
.seq body240_68 body240_31

def body240_70 : Prog (BitVec 64) :=
.decCall ("tmp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) body240_69

def body240_71 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body240_70

def body240_72 : Prog (BitVec 64) :=
.seq body240_61 body240_71

def body240_73 : Prog (BitVec 64) :=
.decCall ("dz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 64#64])]) body240_72

def body240_74 : Prog (BitVec 64) :=
.seq body240_59 body240_73

def body240_75 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "expected",
  Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 160#64])]) body240_74

def body240_76 : Prog (BitVec 64) :=
.decCall ("expected") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_base_fee_per_gas") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 104#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "parent", Flapjack.Exp.const 104#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "parent", Flapjack.Exp.const 112#64]),
  Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "parent", Flapjack.Exp.const 160#64])]) body240_75

def body240_77 : Prog (BitVec 64) :=
.seq body240_56 body240_76

def body240_78 : Prog (BitVec 64) :=
.decCall ("ebg") (Flapjack.Shape.one) ("calculate_excess_blob_gas") ([Flapjack.Exp.var Flapjack.VarKind.local "parent"]) body240_77

def body240_79 : Prog (BitVec 64) :=
.seq body240_2 body240_78

def originalData240 : Decl (BitVec 64) :=
.function { name := "validate_header", inline := false, exported := false, params := [("parent", Flapjack.Shape.one), ("h", Flapjack.Shape.one)], body := body240_55, returnShape := (Flapjack.Shape.one) }
def simplifiedData240 : Decl (BitVec 64) :=
.function { name := "validate_header", inline := false, exported := false, params := [("parent", Flapjack.Shape.one), ("h", Flapjack.Shape.one)], body := body240_79, returnShape := (Flapjack.Shape.one) }
def original240 := Pancake.PanLang.declToHOL originalData240
def simplified240 := Pancake.PanLang.declToHOL simplifiedData240
end InitECandidate.Proofs.FrontendStages.Declarations

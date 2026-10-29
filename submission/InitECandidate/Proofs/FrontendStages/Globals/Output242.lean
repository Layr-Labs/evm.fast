import InitECandidate.Proofs.FrontendStages.Declarations.Data242
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody242_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 20#64)

def globalBody242_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody242_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 96#64]))
  (Flapjack.Exp.const 1#64)) globalBody242_0 globalBody242_1

def globalBody242_3 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 21#64)

def globalBody242_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 208#64]))
  (Flapjack.Exp.var Flapjack.VarKind.local "ebg")) globalBody242_3 globalBody242_1

def globalBody242_5 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 22#64)

def globalBody242_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 104#64]))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 112#64]))) globalBody242_5 globalBody242_1

def globalBody242_7 : Prog (BitVec 64) :=
.seq globalBody242_4 globalBody242_6

def globalBody242_8 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 23#64)

def globalBody242_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody242_8 globalBody242_1

def globalBody242_10 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 24#64)

def globalBody242_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "parent", Flapjack.Exp.const 120#64]))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 120#64]))) globalBody242_10 globalBody242_1

def globalBody242_12 : Prog (BitVec 64) :=
.seq globalBody242_9 globalBody242_11

def globalBody242_13 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 25#64)

def globalBody242_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 96#64]))
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "parent", Flapjack.Exp.const 96#64]),
      Flapjack.Exp.const 1#64])) globalBody242_13 globalBody242_1

def globalBody242_15 : Prog (BitVec 64) :=
.seq globalBody242_12 globalBody242_14

def globalBody242_16 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 26#64)

def globalBody242_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 32#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 136#64]))) globalBody242_16 globalBody242_1

def globalBody242_18 : Prog (BitVec 64) :=
.seq globalBody242_15 globalBody242_17

def globalBody242_19 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 27#64)

def globalBody242_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "dz") (Flapjack.Exp.const 0#64)) globalBody242_19 globalBody242_1

def globalBody242_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 152#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 120#64]),
    Flapjack.Exp.const 8#64]

def globalBody242_22 : Prog (BitVec 64) :=
.seq globalBody242_20 globalBody242_21

def globalBody242_23 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 28#64)

def globalBody242_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody242_23 globalBody242_1

def globalBody242_25 : Prog (BitVec 64) :=
.seq globalBody242_22 globalBody242_24

def globalBody242_26 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "tmp") (Flapjack.Exp.const 192#64)

def globalBody242_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp", Flapjack.Exp.const 1#64,
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tmp", Flapjack.Exp.const 32#64]]

def globalBody242_28 : Prog (BitVec 64) :=
.seq globalBody242_26 globalBody242_27

def globalBody242_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 16#64]),
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tmp", Flapjack.Exp.const 32#64],
    Flapjack.Exp.const 32#64]

def globalBody242_30 : Prog (BitVec 64) :=
.seq globalBody242_28 globalBody242_29

def globalBody242_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody242_32 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 29#64)

def globalBody242_33 : Prog (BitVec 64) :=
.seq globalBody242_31 globalBody242_32

def globalBody242_34 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody242_33 globalBody242_1

def globalBody242_35 : Prog (BitVec 64) :=
.seq globalBody242_30 globalBody242_34

def globalBody242_36 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "header_hash"
  [Flapjack.Exp.var Flapjack.VarKind.local "parent", Flapjack.Exp.var Flapjack.VarKind.local "tmp"]

def globalBody242_37 : Prog (BitVec 64) :=
.seq globalBody242_35 globalBody242_36

def globalBody242_38 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "eq"), none)) "memeq"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 8#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "tmp", Flapjack.Exp.const 32#64]

def globalBody242_39 : Prog (BitVec 64) :=
.seq globalBody242_37 globalBody242_38

def globalBody242_40 : Prog (BitVec 64) :=
.seq globalBody242_39 globalBody242_31

def globalBody242_41 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 30#64)

def globalBody242_42 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody242_41 globalBody242_1

def globalBody242_43 : Prog (BitVec 64) :=
.seq globalBody242_40 globalBody242_42

def globalBody242_44 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody242_45 : Prog (BitVec 64) :=
.seq globalBody242_43 globalBody242_44

def globalBody242_46 : Prog (BitVec 64) :=
.decCall ("tmp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) globalBody242_45

def globalBody242_47 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody242_46

def globalBody242_48 : Prog (BitVec 64) :=
.seq globalBody242_25 globalBody242_47

def globalBody242_49 : Prog (BitVec 64) :=
.decCall ("dz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 64#64])]) globalBody242_48

def globalBody242_50 : Prog (BitVec 64) :=
.seq globalBody242_18 globalBody242_49

def globalBody242_51 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "expected",
  Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 160#64])]) globalBody242_50

def globalBody242_52 : Prog (BitVec 64) :=
.decCall ("expected") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_base_fee_per_gas") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 104#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "parent", Flapjack.Exp.const 104#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "parent", Flapjack.Exp.const 112#64]),
  Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "parent", Flapjack.Exp.const 160#64])]) globalBody242_51

def globalBody242_53 : Prog (BitVec 64) :=
.seq globalBody242_7 globalBody242_52

def globalBody242_54 : Prog (BitVec 64) :=
.decCall ("ebg") (Flapjack.Shape.one) ("calculate_excess_blob_gas") ([Flapjack.Exp.var Flapjack.VarKind.local "parent"]) globalBody242_53

def globalBody242_55 : Prog (BitVec 64) :=
.seq globalBody242_2 globalBody242_54

def globalData242 : Decl (BitVec 64) := .function { name := "validate_header", inline := false, exported := false, params := [("parent", Flapjack.Shape.one), ("h", Flapjack.Shape.one)], body := globalBody242_55, returnShape := (Flapjack.Shape.one) }
def globalOutput242 := Pancake.PanLang.declToHOL globalData242
end InitECandidate.Proofs.FrontendStages.Declarations

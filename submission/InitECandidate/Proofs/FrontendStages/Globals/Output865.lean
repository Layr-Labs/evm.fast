import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data865
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate832
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody865_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 248#64]

def globalBody865_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 1#64)

def globalBody865_2 : Prog (BitVec 64) :=
.seq globalBody865_0 globalBody865_1

def globalBody865_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 0#64])

def globalBody865_4 : Prog (BitVec 64) :=
.seq globalBody865_2 globalBody865_3

def globalBody865_5 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "tmp") (Flapjack.Exp.const 192#64)

def globalBody865_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp", Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "oh"]

def globalBody865_7 : Prog (BitVec 64) :=
.seq globalBody865_5 globalBody865_6

def globalBody865_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "oh")

def globalBody865_9 : Prog (BitVec 64) :=
.seq globalBody865_7 globalBody865_8

def globalBody865_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 32#64])

def globalBody865_11 : Prog (BitVec 64) :=
.seq globalBody865_9 globalBody865_10

def globalBody865_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 52#64])

def globalBody865_13 : Prog (BitVec 64) :=
.seq globalBody865_11 globalBody865_12

def globalBody865_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "txr")

def globalBody865_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 84#64])

def globalBody865_16 : Prog (BitVec 64) :=
.seq globalBody865_14 globalBody865_15

def globalBody865_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 116#64])

def globalBody865_18 : Prog (BitVec 64) :=
.seq globalBody865_16 globalBody865_17

def globalBody865_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody865_20 : Prog (BitVec 64) :=
.seq globalBody865_18 globalBody865_19

def globalBody865_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 80#64]))

def globalBody865_22 : Prog (BitVec 64) :=
.seq globalBody865_20 globalBody865_21

def globalBody865_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 88#64]))

def globalBody865_24 : Prog (BitVec 64) :=
.seq globalBody865_22 globalBody865_23

def globalBody865_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 96#64]))

def globalBody865_26 : Prog (BitVec 64) :=
.seq globalBody865_24 globalBody865_25

def globalBody865_27 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 104#64]))

def globalBody865_28 : Prog (BitVec 64) :=
.seq globalBody865_26 globalBody865_27

def globalBody865_29 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 16#64]))

def globalBody865_30 : Prog (BitVec 64) :=
.seq globalBody865_28 globalBody865_29

def globalBody865_31 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 136#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 24#64]))

def globalBody865_32 : Prog (BitVec 64) :=
.seq globalBody865_30 globalBody865_31

def globalBody865_33 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 144#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 372#64])

def globalBody865_34 : Prog (BitVec 64) :=
.seq globalBody865_32 globalBody865_33

def globalBody865_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero" [Flapjack.Exp.var Flapjack.VarKind.local "z8", Flapjack.Exp.const 8#64]

def globalBody865_36 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "z8")

def globalBody865_37 : Prog (BitVec 64) :=
.seq globalBody865_35 globalBody865_36

def globalBody865_38 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "bf")

def globalBody865_39 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 192#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "wr")

def globalBody865_40 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 200#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 112#64]))

def globalBody865_41 : Prog (BitVec 64) :=
.seq globalBody865_39 globalBody865_40

def globalBody865_42 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 208#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 120#64]))

def globalBody865_43 : Prog (BitVec 64) :=
.seq globalBody865_41 globalBody865_42

def globalBody865_44 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 216#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 24#64]))

def globalBody865_45 : Prog (BitVec 64) :=
.seq globalBody865_43 globalBody865_44

def globalBody865_46 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 224#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "rh")

def globalBody865_47 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 232#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "bh")

def globalBody865_48 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 240#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 128#64]))

def globalBody865_49 : Prog (BitVec 64) :=
.seq globalBody865_47 globalBody865_48

def globalBody865_50 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 7#64)

def globalBody865_51 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody865_52 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 8388608#64) (Flapjack.Exp.var Flapjack.VarKind.local "bl")) globalBody865_50 globalBody865_51

def globalBody865_53 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "build_mpt_indexed"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "txr"]

def globalBody865_54 : Prog (BitVec 64) :=
.seq globalBody865_52 globalBody865_53

def globalBody865_55 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 528#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody865_56 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "nwd", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 16#64]]) globalBody865_55

def globalBody865_57 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 528#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "e"))

def globalBody865_58 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 528#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "e"))

def globalBody865_59 : Prog (BitVec 64) :=
.seq globalBody865_57 globalBody865_58

def globalBody865_60 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody865_61 : Prog (BitVec 64) :=
.seq globalBody865_59 globalBody865_60

def globalBody865_62 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("encode_withdrawal_rlp") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 48#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 44#64]]]) globalBody865_61

def globalBody865_63 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nwd")) globalBody865_62

def globalBody865_64 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "build_mpt_indexed"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 528#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "nwd", Flapjack.Exp.var Flapjack.VarKind.local "wr"]

def globalBody865_65 : Prog (BitVec 64) :=
.seq globalBody865_63 globalBody865_64

def globalBody865_66 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "compute_requests_hash"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "reqs"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "reqs"),
    Flapjack.Exp.var Flapjack.VarKind.local "rh"]

def globalBody865_67 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 64#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 72#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "bh"]

def globalBody865_68 : Prog (BitVec 64) :=
.seq globalBody865_66 globalBody865_67

def globalBody865_69 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "h")

def globalBody865_70 : Prog (BitVec 64) :=
.seq globalBody865_68 globalBody865_69

def globalBody865_71 : Prog (BitVec 64) :=
.decCall ("reqs") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("encode_execution_requests") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 32#64])]) globalBody865_70

def globalBody865_72 : Prog (BitVec 64) :=
.seq globalBody865_65 globalBody865_71

def globalBody865_73 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody865_72

def globalBody865_74 : Prog (BitVec 64) :=
.seq globalBody865_56 globalBody865_73

def globalBody865_75 : Prog (BitVec 64) :=
.dec ("nwd") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 56#64])) globalBody865_74

def globalBody865_76 : Prog (BitVec 64) :=
.seq globalBody865_54 globalBody865_75

def globalBody865_77 : Prog (BitVec 64) :=
.decCall ("bl") (Flapjack.Shape.one) ("block_rlp_length") ([Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "pl"]) globalBody865_76

def globalBody865_78 : Prog (BitVec 64) :=
.seq globalBody865_49 globalBody865_77

def globalBody865_79 : Prog (BitVec 64) :=
.decCall ("bh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody865_78

def globalBody865_80 : Prog (BitVec 64) :=
.seq globalBody865_46 globalBody865_79

def globalBody865_81 : Prog (BitVec 64) :=
.decCall ("rh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody865_80

def globalBody865_82 : Prog (BitVec 64) :=
.seq globalBody865_45 globalBody865_81

def globalBody865_83 : Prog (BitVec 64) :=
.decCall ("wr") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody865_82

def globalBody865_84 : Prog (BitVec 64) :=
.seq globalBody865_38 globalBody865_83

def globalBody865_85 : Prog (BitVec 64) :=
.dec ("bf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64]),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 1#64]))
          (Flapjack.Exp.const 8#64),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 2#64]))
          (Flapjack.Exp.const 16#64),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 3#64]))
          (Flapjack.Exp.const 24#64),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.loadByte
                (Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 4#64]),
              Flapjack.Exp.shift Flapjack.Shift.lsl
                (Flapjack.Exp.loadByte
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 4#64,
                      Flapjack.Exp.const 1#64]))
                (Flapjack.Exp.const 8#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl
                (Flapjack.Exp.loadByte
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 4#64,
                      Flapjack.Exp.const 2#64]))
                (Flapjack.Exp.const 16#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl
                (Flapjack.Exp.loadByte
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 4#64,
                      Flapjack.Exp.const 3#64]))
                (Flapjack.Exp.const 24#64)])
          (Flapjack.Exp.const 32#64)],
    Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 8#64]),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 8#64,
                Flapjack.Exp.const 1#64]))
          (Flapjack.Exp.const 8#64),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 8#64,
                Flapjack.Exp.const 2#64]))
          (Flapjack.Exp.const 16#64),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 8#64,
                Flapjack.Exp.const 3#64]))
          (Flapjack.Exp.const 24#64),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.loadByte
                (Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 8#64,
                    Flapjack.Exp.const 4#64]),
              Flapjack.Exp.shift Flapjack.Shift.lsl
                (Flapjack.Exp.loadByte
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 8#64,
                      Flapjack.Exp.const 4#64, Flapjack.Exp.const 1#64]))
                (Flapjack.Exp.const 8#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl
                (Flapjack.Exp.loadByte
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 8#64,
                      Flapjack.Exp.const 4#64, Flapjack.Exp.const 2#64]))
                (Flapjack.Exp.const 16#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl
                (Flapjack.Exp.loadByte
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 8#64,
                      Flapjack.Exp.const 4#64, Flapjack.Exp.const 3#64]))
                (Flapjack.Exp.const 24#64)])
          (Flapjack.Exp.const 32#64)],
    Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 16#64]),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 16#64,
                Flapjack.Exp.const 1#64]))
          (Flapjack.Exp.const 8#64),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 16#64,
                Flapjack.Exp.const 2#64]))
          (Flapjack.Exp.const 16#64),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 16#64,
                Flapjack.Exp.const 3#64]))
          (Flapjack.Exp.const 24#64),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.loadByte
                (Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 16#64,
                    Flapjack.Exp.const 4#64]),
              Flapjack.Exp.shift Flapjack.Shift.lsl
                (Flapjack.Exp.loadByte
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 16#64,
                      Flapjack.Exp.const 4#64, Flapjack.Exp.const 1#64]))
                (Flapjack.Exp.const 8#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl
                (Flapjack.Exp.loadByte
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 16#64,
                      Flapjack.Exp.const 4#64, Flapjack.Exp.const 2#64]))
                (Flapjack.Exp.const 16#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl
                (Flapjack.Exp.loadByte
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 16#64,
                      Flapjack.Exp.const 4#64, Flapjack.Exp.const 3#64]))
                (Flapjack.Exp.const 24#64)])
          (Flapjack.Exp.const 32#64)],
    Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 24#64]),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 24#64,
                Flapjack.Exp.const 1#64]))
          (Flapjack.Exp.const 8#64),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 24#64,
                Flapjack.Exp.const 2#64]))
          (Flapjack.Exp.const 16#64),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 24#64,
                Flapjack.Exp.const 3#64]))
          (Flapjack.Exp.const 24#64),
        Flapjack.Exp.shift Flapjack.Shift.lsl
          (Flapjack.Exp.op Flapjack.BinOp.or
            [Flapjack.Exp.loadByte
                (Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 24#64,
                    Flapjack.Exp.const 4#64]),
              Flapjack.Exp.shift Flapjack.Shift.lsl
                (Flapjack.Exp.loadByte
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 24#64,
                      Flapjack.Exp.const 4#64, Flapjack.Exp.const 1#64]))
                (Flapjack.Exp.const 8#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl
                (Flapjack.Exp.loadByte
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 24#64,
                      Flapjack.Exp.const 4#64, Flapjack.Exp.const 2#64]))
                (Flapjack.Exp.const 16#64),
              Flapjack.Exp.shift Flapjack.Shift.lsl
                (Flapjack.Exp.loadByte
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64, Flapjack.Exp.const 24#64,
                      Flapjack.Exp.const 4#64, Flapjack.Exp.const 3#64]))
                (Flapjack.Exp.const 24#64)])
          (Flapjack.Exp.const 32#64)]]) globalBody865_84

def globalBody865_86 : Prog (BitVec 64) :=
.seq globalBody865_37 globalBody865_85

def globalBody865_87 : Prog (BitVec 64) :=
.decCall ("z8") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) globalBody865_86

def globalBody865_88 : Prog (BitVec 64) :=
.seq globalBody865_34 globalBody865_87

def globalBody865_89 : Prog (BitVec 64) :=
.decCall ("txr") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody865_88

def globalBody865_90 : Prog (BitVec 64) :=
.seq globalBody865_13 globalBody865_89

def globalBody865_91 : Prog (BitVec 64) :=
.decCall ("tmp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) globalBody865_90

def globalBody865_92 : Prog (BitVec 64) :=
.decCall ("oh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody865_91

def globalBody865_93 : Prog (BitVec 64) :=
.seq globalBody865_4 globalBody865_92

def globalBody865_94 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 248#64]) globalBody865_93

def globalBody865_95 : Prog (BitVec 64) :=
.dec ("raw") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 0#64])) globalBody865_94

def globalBody865_96 : Prog (BitVec 64) :=
.dec ("pl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 0#64])) globalBody865_95

def globalData865 : Decl (BitVec 64) :=
.function { name := "payload_header", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := globalBody865_96, returnShape := (Flapjack.Shape.one) }
def globalOutput865 := Pancake.PanLang.declToHOL globalData865
end InitECandidate.Proofs.FrontendStages.Declarations

import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data228
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate210
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody228_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "HdrErr" (Flapjack.Exp.const 10#64)

def globalBody228_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody228_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "top"))
  (Flapjack.Exp.const 1#64)) globalBody228_0 globalBody228_1

def globalBody228_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "is_current" (Flapjack.Exp.const 1#64)

def globalBody228_4 : Prog (BitVec 64) :=
Flapjack.Prog.raise "HdrErr" (Flapjack.Exp.const 11#64)

def globalBody228_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 21#64)) globalBody228_4 globalBody228_1

def globalBody228_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 23#64)) globalBody228_3 globalBody228_5

def globalBody228_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "is_current")

def globalBody228_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def globalBody228_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 1#64, Flapjack.Exp.const 32#64]

def globalBody228_10 : Prog (BitVec 64) :=
.seq globalBody228_8 globalBody228_9

def globalBody228_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def globalBody228_12 : Prog (BitVec 64) :=
.seq globalBody228_10 globalBody228_11

def globalBody228_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 2#64, Flapjack.Exp.const 20#64]

def globalBody228_14 : Prog (BitVec 64) :=
.seq globalBody228_12 globalBody228_13

def globalBody228_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def globalBody228_16 : Prog (BitVec 64) :=
.seq globalBody228_14 globalBody228_15

def globalBody228_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 3#64, Flapjack.Exp.const 32#64]

def globalBody228_18 : Prog (BitVec 64) :=
.seq globalBody228_16 globalBody228_17

def globalBody228_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def globalBody228_20 : Prog (BitVec 64) :=
.seq globalBody228_18 globalBody228_19

def globalBody228_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 4#64, Flapjack.Exp.const 32#64]

def globalBody228_22 : Prog (BitVec 64) :=
.seq globalBody228_20 globalBody228_21

def globalBody228_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def globalBody228_24 : Prog (BitVec 64) :=
.seq globalBody228_22 globalBody228_23

def globalBody228_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 5#64, Flapjack.Exp.const 32#64]

def globalBody228_26 : Prog (BitVec 64) :=
.seq globalBody228_24 globalBody228_25

def globalBody228_27 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def globalBody228_28 : Prog (BitVec 64) :=
.seq globalBody228_26 globalBody228_27

def globalBody228_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 6#64, Flapjack.Exp.const 256#64]

def globalBody228_30 : Prog (BitVec 64) :=
.seq globalBody228_28 globalBody228_29

def globalBody228_31 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def globalBody228_32 : Prog (BitVec 64) :=
.seq globalBody228_30 globalBody228_31

def globalBody228_33 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "d")

def globalBody228_34 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def globalBody228_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "hdr_word_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 9#64]

def globalBody228_36 : Prog (BitVec 64) :=
.seq globalBody228_34 globalBody228_35

def globalBody228_37 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def globalBody228_38 : Prog (BitVec 64) :=
.seq globalBody228_36 globalBody228_37

def globalBody228_39 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "hdr_word_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 10#64]

def globalBody228_40 : Prog (BitVec 64) :=
.seq globalBody228_38 globalBody228_39

def globalBody228_41 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def globalBody228_42 : Prog (BitVec 64) :=
.seq globalBody228_40 globalBody228_41

def globalBody228_43 : Prog (BitVec 64) :=
Flapjack.Prog.raise "HdrErr" (Flapjack.Exp.const 12#64)

def globalBody228_44 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 8#64)
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "tsf"))) globalBody228_43 globalBody228_1

def globalBody228_45 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "hdr_word_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 11#64]

def globalBody228_46 : Prog (BitVec 64) :=
.seq globalBody228_44 globalBody228_45

def globalBody228_47 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def globalBody228_48 : Prog (BitVec 64) :=
.seq globalBody228_46 globalBody228_47

def globalBody228_49 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ex"))

def globalBody228_50 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 136#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "ex"))

def globalBody228_51 : Prog (BitVec 64) :=
.seq globalBody228_49 globalBody228_50

def globalBody228_52 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 13#64, Flapjack.Exp.const 32#64]

def globalBody228_53 : Prog (BitVec 64) :=
.seq globalBody228_51 globalBody228_52

def globalBody228_54 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 144#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def globalBody228_55 : Prog (BitVec 64) :=
.seq globalBody228_53 globalBody228_54

def globalBody228_56 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 14#64, Flapjack.Exp.const 8#64]

def globalBody228_57 : Prog (BitVec 64) :=
.seq globalBody228_55 globalBody228_56

def globalBody228_58 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def globalBody228_59 : Prog (BitVec 64) :=
.seq globalBody228_57 globalBody228_58

def globalBody228_60 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "d"), none)) "hdr_u256_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 15#64, Flapjack.Exp.const 0#64]

def globalBody228_61 : Prog (BitVec 64) :=
.seq globalBody228_59 globalBody228_60

def globalBody228_62 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "d")

def globalBody228_63 : Prog (BitVec 64) :=
.seq globalBody228_61 globalBody228_62

def globalBody228_64 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 16#64, Flapjack.Exp.const 32#64]

def globalBody228_65 : Prog (BitVec 64) :=
.seq globalBody228_63 globalBody228_64

def globalBody228_66 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 192#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def globalBody228_67 : Prog (BitVec 64) :=
.seq globalBody228_65 globalBody228_66

def globalBody228_68 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "hdr_word_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 17#64]

def globalBody228_69 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 200#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def globalBody228_70 : Prog (BitVec 64) :=
.seq globalBody228_68 globalBody228_69

def globalBody228_71 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "bg"), none)) "hdr_uint_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 18#64, Flapjack.Exp.const 8#64]

def globalBody228_72 : Prog (BitVec 64) :=
.seq globalBody228_70 globalBody228_71

def globalBody228_73 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "hdr_word_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 18#64]

def globalBody228_74 : Prog (BitVec 64) :=
.seq globalBody228_72 globalBody228_73

def globalBody228_75 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 208#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def globalBody228_76 : Prog (BitVec 64) :=
.seq globalBody228_74 globalBody228_75

def globalBody228_77 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 19#64, Flapjack.Exp.const 32#64]

def globalBody228_78 : Prog (BitVec 64) :=
.seq globalBody228_76 globalBody228_77

def globalBody228_79 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 216#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def globalBody228_80 : Prog (BitVec 64) :=
.seq globalBody228_78 globalBody228_79

def globalBody228_81 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 20#64, Flapjack.Exp.const 32#64]

def globalBody228_82 : Prog (BitVec 64) :=
.seq globalBody228_80 globalBody228_81

def globalBody228_83 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 224#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def globalBody228_84 : Prog (BitVec 64) :=
.seq globalBody228_82 globalBody228_83

def globalBody228_85 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 21#64, Flapjack.Exp.const 32#64]

def globalBody228_86 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 232#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def globalBody228_87 : Prog (BitVec 64) :=
.seq globalBody228_85 globalBody228_86

def globalBody228_88 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "bg"), none)) "hdr_uint_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 22#64, Flapjack.Exp.const 8#64]

def globalBody228_89 : Prog (BitVec 64) :=
.seq globalBody228_87 globalBody228_88

def globalBody228_90 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "hdr_word_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 22#64]

def globalBody228_91 : Prog (BitVec 64) :=
.seq globalBody228_89 globalBody228_90

def globalBody228_92 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 240#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def globalBody228_93 : Prog (BitVec 64) :=
.seq globalBody228_91 globalBody228_92

def globalBody228_94 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 232#64])
  (Flapjack.Exp.const 0#64)

def globalBody228_95 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 240#64])
  (Flapjack.Exp.const 0#64)

def globalBody228_96 : Prog (BitVec 64) :=
.seq globalBody228_94 globalBody228_95

def globalBody228_97 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "is_current") (Flapjack.Exp.const 0#64)) globalBody228_93 globalBody228_96

def globalBody228_98 : Prog (BitVec 64) :=
.seq globalBody228_84 globalBody228_97

def globalBody228_99 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "h")

def globalBody228_100 : Prog (BitVec 64) :=
.seq globalBody228_98 globalBody228_99

def globalBody228_101 : Prog (BitVec 64) :=
.decCall ("bg") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("hdr_uint_field") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 17#64, Flapjack.Exp.const 8#64]) globalBody228_100

def globalBody228_102 : Prog (BitVec 64) :=
.seq globalBody228_67 globalBody228_101

def globalBody228_103 : Prog (BitVec 64) :=
.decCall ("ex") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("hdr_raw_field") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 12#64]) globalBody228_102

def globalBody228_104 : Prog (BitVec 64) :=
.seq globalBody228_48 globalBody228_103

def globalBody228_105 : Prog (BitVec 64) :=
.decCall ("tsf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("hdr_uint_field") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 11#64, Flapjack.Exp.const 32#64]) globalBody228_104

def globalBody228_106 : Prog (BitVec 64) :=
.seq globalBody228_42 globalBody228_105

def globalBody228_107 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("hdr_word_field") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 8#64]) globalBody228_106

def globalBody228_108 : Prog (BitVec 64) :=
.seq globalBody228_33 globalBody228_107

def globalBody228_109 : Prog (BitVec 64) :=
.decCall ("d") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("hdr_u256_field") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 7#64, Flapjack.Exp.const 0#64]) globalBody228_108

def globalBody228_110 : Prog (BitVec 64) :=
.seq globalBody228_32 globalBody228_109

def globalBody228_111 : Prog (BitVec 64) :=
.decCall ("f") (Flapjack.Shape.one) ("hdr_bytes_field") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 0#64, Flapjack.Exp.const 32#64]) globalBody228_110

def globalBody228_112 : Prog (BitVec 64) :=
.seq globalBody228_7 globalBody228_111

def globalBody228_113 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 248#64]) globalBody228_112

def globalBody228_114 : Prog (BitVec 64) :=
.seq globalBody228_6 globalBody228_113

def globalBody228_115 : Prog (BitVec 64) :=
.dec ("is_current") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody228_114

def globalBody228_116 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "lst")) globalBody228_115

def globalBody228_117 : Prog (BitVec 64) :=
.dec ("arr") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "lst")) globalBody228_116

def globalBody228_118 : Prog (BitVec 64) :=
.decCall ("lst") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_list_to_slices") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "top"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "top")]) globalBody228_117

def globalBody228_119 : Prog (BitVec 64) :=
.seq globalBody228_2 globalBody228_118

def globalBody228_120 : Prog (BitVec 64) :=
.decCall ("top") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_decode_fully") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "len"]) globalBody228_119

def globalData228 : Decl (BitVec 64) :=
.function { name := "decode_header", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := globalBody228_120, returnShape := (Flapjack.Shape.one) }
def globalOutput228 := Pancake.PanLang.declToHOL globalData228
end InitECandidate.Proofs.FrontendStages.Declarations

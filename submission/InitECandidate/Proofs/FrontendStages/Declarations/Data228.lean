import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify212
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body228_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "HdrErr" (Flapjack.Exp.const 10#64)

def body228_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body228_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "top"))
  (Flapjack.Exp.const 1#64)) body228_0 body228_1

def body228_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "is_current" (Flapjack.Exp.const 1#64)

def body228_4 : Prog (BitVec 64) :=
Flapjack.Prog.raise "HdrErr" (Flapjack.Exp.const 11#64)

def body228_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 21#64)) body228_4 body228_1

def body228_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 23#64)) body228_3 body228_5

def body228_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "is_current")

def body228_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def body228_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 1#64, Flapjack.Exp.const 32#64]

def body228_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def body228_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 2#64, Flapjack.Exp.const 20#64]

def body228_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def body228_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 3#64, Flapjack.Exp.const 32#64]

def body228_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def body228_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 4#64, Flapjack.Exp.const 32#64]

def body228_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def body228_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 5#64, Flapjack.Exp.const 32#64]

def body228_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def body228_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 6#64, Flapjack.Exp.const 256#64]

def body228_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def body228_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "d")

def body228_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def body228_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "hdr_word_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 9#64]

def body228_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def body228_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "hdr_word_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 10#64]

def body228_26 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def body228_27 : Prog (BitVec 64) :=
Flapjack.Prog.raise "HdrErr" (Flapjack.Exp.const 12#64)

def body228_28 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 8#64)
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "tsf"))) body228_27 body228_1

def body228_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "hdr_word_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 11#64]

def body228_30 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def body228_31 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ex"))

def body228_32 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 136#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "ex"))

def body228_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 13#64, Flapjack.Exp.const 32#64]

def body228_34 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 144#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def body228_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 14#64, Flapjack.Exp.const 8#64]

def body228_36 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def body228_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "d"), none)) "hdr_u256_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 15#64, Flapjack.Exp.const 0#64]

def body228_38 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "d")

def body228_39 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 16#64, Flapjack.Exp.const 32#64]

def body228_40 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 192#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def body228_41 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "hdr_word_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 17#64]

def body228_42 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 200#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def body228_43 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "bg"), none)) "hdr_uint_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 18#64, Flapjack.Exp.const 8#64]

def body228_44 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "hdr_word_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 18#64]

def body228_45 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 208#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def body228_46 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 19#64, Flapjack.Exp.const 32#64]

def body228_47 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 216#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def body228_48 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 20#64, Flapjack.Exp.const 32#64]

def body228_49 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 224#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def body228_50 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "f"), none)) "hdr_bytes_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 21#64, Flapjack.Exp.const 32#64]

def body228_51 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 232#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "f")

def body228_52 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "bg"), none)) "hdr_uint_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 22#64, Flapjack.Exp.const 8#64]

def body228_53 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "hdr_word_field"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 22#64]

def body228_54 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 240#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def body228_55 : Prog (BitVec 64) :=
.seq body228_53 body228_54

def body228_56 : Prog (BitVec 64) :=
.seq body228_52 body228_55

def body228_57 : Prog (BitVec 64) :=
.seq body228_51 body228_56

def body228_58 : Prog (BitVec 64) :=
.seq body228_50 body228_57

def body228_59 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 232#64])
  (Flapjack.Exp.const 0#64)

def body228_60 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 240#64])
  (Flapjack.Exp.const 0#64)

def body228_61 : Prog (BitVec 64) :=
.seq body228_59 body228_60

def body228_62 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "is_current") (Flapjack.Exp.const 0#64)) body228_58 body228_61

def body228_63 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "h")

def body228_64 : Prog (BitVec 64) :=
.seq body228_62 body228_63

def body228_65 : Prog (BitVec 64) :=
.seq body228_49 body228_64

def body228_66 : Prog (BitVec 64) :=
.seq body228_48 body228_65

def body228_67 : Prog (BitVec 64) :=
.seq body228_47 body228_66

def body228_68 : Prog (BitVec 64) :=
.seq body228_46 body228_67

def body228_69 : Prog (BitVec 64) :=
.seq body228_45 body228_68

def body228_70 : Prog (BitVec 64) :=
.seq body228_44 body228_69

def body228_71 : Prog (BitVec 64) :=
.seq body228_43 body228_70

def body228_72 : Prog (BitVec 64) :=
.seq body228_42 body228_71

def body228_73 : Prog (BitVec 64) :=
.seq body228_41 body228_72

def body228_74 : Prog (BitVec 64) :=
.decCall ("bg") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("hdr_uint_field") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 17#64, Flapjack.Exp.const 8#64]) body228_73

def body228_75 : Prog (BitVec 64) :=
.seq body228_40 body228_74

def body228_76 : Prog (BitVec 64) :=
.seq body228_39 body228_75

def body228_77 : Prog (BitVec 64) :=
.seq body228_38 body228_76

def body228_78 : Prog (BitVec 64) :=
.seq body228_37 body228_77

def body228_79 : Prog (BitVec 64) :=
.seq body228_36 body228_78

def body228_80 : Prog (BitVec 64) :=
.seq body228_35 body228_79

def body228_81 : Prog (BitVec 64) :=
.seq body228_34 body228_80

def body228_82 : Prog (BitVec 64) :=
.seq body228_33 body228_81

def body228_83 : Prog (BitVec 64) :=
.seq body228_32 body228_82

def body228_84 : Prog (BitVec 64) :=
.seq body228_31 body228_83

def body228_85 : Prog (BitVec 64) :=
.decCall ("ex") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("hdr_raw_field") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 12#64]) body228_84

def body228_86 : Prog (BitVec 64) :=
.seq body228_30 body228_85

def body228_87 : Prog (BitVec 64) :=
.seq body228_29 body228_86

def body228_88 : Prog (BitVec 64) :=
.seq body228_28 body228_87

def body228_89 : Prog (BitVec 64) :=
.decCall ("tsf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("hdr_uint_field") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 11#64, Flapjack.Exp.const 32#64]) body228_88

def body228_90 : Prog (BitVec 64) :=
.seq body228_26 body228_89

def body228_91 : Prog (BitVec 64) :=
.seq body228_25 body228_90

def body228_92 : Prog (BitVec 64) :=
.seq body228_24 body228_91

def body228_93 : Prog (BitVec 64) :=
.seq body228_23 body228_92

def body228_94 : Prog (BitVec 64) :=
.seq body228_22 body228_93

def body228_95 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("hdr_word_field") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 8#64]) body228_94

def body228_96 : Prog (BitVec 64) :=
.seq body228_21 body228_95

def body228_97 : Prog (BitVec 64) :=
.decCall ("d") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("hdr_u256_field") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 7#64, Flapjack.Exp.const 0#64]) body228_96

def body228_98 : Prog (BitVec 64) :=
.seq body228_20 body228_97

def body228_99 : Prog (BitVec 64) :=
.seq body228_19 body228_98

def body228_100 : Prog (BitVec 64) :=
.seq body228_18 body228_99

def body228_101 : Prog (BitVec 64) :=
.seq body228_17 body228_100

def body228_102 : Prog (BitVec 64) :=
.seq body228_16 body228_101

def body228_103 : Prog (BitVec 64) :=
.seq body228_15 body228_102

def body228_104 : Prog (BitVec 64) :=
.seq body228_14 body228_103

def body228_105 : Prog (BitVec 64) :=
.seq body228_13 body228_104

def body228_106 : Prog (BitVec 64) :=
.seq body228_12 body228_105

def body228_107 : Prog (BitVec 64) :=
.seq body228_11 body228_106

def body228_108 : Prog (BitVec 64) :=
.seq body228_10 body228_107

def body228_109 : Prog (BitVec 64) :=
.seq body228_9 body228_108

def body228_110 : Prog (BitVec 64) :=
.seq body228_8 body228_109

def body228_111 : Prog (BitVec 64) :=
.decCall ("f") (Flapjack.Shape.one) ("hdr_bytes_field") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 0#64, Flapjack.Exp.const 32#64]) body228_110

def body228_112 : Prog (BitVec 64) :=
.seq body228_7 body228_111

def body228_113 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 248#64]) body228_112

def body228_114 : Prog (BitVec 64) :=
.seq body228_6 body228_113

def body228_115 : Prog (BitVec 64) :=
.dec ("is_current") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body228_114

def body228_116 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "lst")) body228_115

def body228_117 : Prog (BitVec 64) :=
.dec ("arr") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "lst")) body228_116

def body228_118 : Prog (BitVec 64) :=
.decCall ("lst") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_list_to_slices") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "top"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "top")]) body228_117

def body228_119 : Prog (BitVec 64) :=
.seq body228_2 body228_118

def body228_120 : Prog (BitVec 64) :=
.decCall ("top") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_decode_fully") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "len"]) body228_119

def body228_121 : Prog (BitVec 64) :=
.seq body228_8 body228_9

def body228_122 : Prog (BitVec 64) :=
.seq body228_121 body228_10

def body228_123 : Prog (BitVec 64) :=
.seq body228_122 body228_11

def body228_124 : Prog (BitVec 64) :=
.seq body228_123 body228_12

def body228_125 : Prog (BitVec 64) :=
.seq body228_124 body228_13

def body228_126 : Prog (BitVec 64) :=
.seq body228_125 body228_14

def body228_127 : Prog (BitVec 64) :=
.seq body228_126 body228_15

def body228_128 : Prog (BitVec 64) :=
.seq body228_127 body228_16

def body228_129 : Prog (BitVec 64) :=
.seq body228_128 body228_17

def body228_130 : Prog (BitVec 64) :=
.seq body228_129 body228_18

def body228_131 : Prog (BitVec 64) :=
.seq body228_130 body228_19

def body228_132 : Prog (BitVec 64) :=
.seq body228_131 body228_20

def body228_133 : Prog (BitVec 64) :=
.seq body228_22 body228_23

def body228_134 : Prog (BitVec 64) :=
.seq body228_133 body228_24

def body228_135 : Prog (BitVec 64) :=
.seq body228_134 body228_25

def body228_136 : Prog (BitVec 64) :=
.seq body228_135 body228_26

def body228_137 : Prog (BitVec 64) :=
.seq body228_28 body228_29

def body228_138 : Prog (BitVec 64) :=
.seq body228_137 body228_30

def body228_139 : Prog (BitVec 64) :=
.seq body228_31 body228_32

def body228_140 : Prog (BitVec 64) :=
.seq body228_139 body228_33

def body228_141 : Prog (BitVec 64) :=
.seq body228_140 body228_34

def body228_142 : Prog (BitVec 64) :=
.seq body228_141 body228_35

def body228_143 : Prog (BitVec 64) :=
.seq body228_142 body228_36

def body228_144 : Prog (BitVec 64) :=
.seq body228_143 body228_37

def body228_145 : Prog (BitVec 64) :=
.seq body228_144 body228_38

def body228_146 : Prog (BitVec 64) :=
.seq body228_145 body228_39

def body228_147 : Prog (BitVec 64) :=
.seq body228_146 body228_40

def body228_148 : Prog (BitVec 64) :=
.seq body228_41 body228_42

def body228_149 : Prog (BitVec 64) :=
.seq body228_148 body228_43

def body228_150 : Prog (BitVec 64) :=
.seq body228_149 body228_44

def body228_151 : Prog (BitVec 64) :=
.seq body228_150 body228_45

def body228_152 : Prog (BitVec 64) :=
.seq body228_151 body228_46

def body228_153 : Prog (BitVec 64) :=
.seq body228_152 body228_47

def body228_154 : Prog (BitVec 64) :=
.seq body228_153 body228_48

def body228_155 : Prog (BitVec 64) :=
.seq body228_154 body228_49

def body228_156 : Prog (BitVec 64) :=
.seq body228_50 body228_51

def body228_157 : Prog (BitVec 64) :=
.seq body228_156 body228_52

def body228_158 : Prog (BitVec 64) :=
.seq body228_157 body228_53

def body228_159 : Prog (BitVec 64) :=
.seq body228_158 body228_54

def body228_160 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "is_current") (Flapjack.Exp.const 0#64)) body228_159 body228_61

def body228_161 : Prog (BitVec 64) :=
.seq body228_155 body228_160

def body228_162 : Prog (BitVec 64) :=
.seq body228_161 body228_63

def body228_163 : Prog (BitVec 64) :=
.decCall ("bg") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("hdr_uint_field") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 17#64, Flapjack.Exp.const 8#64]) body228_162

def body228_164 : Prog (BitVec 64) :=
.seq body228_147 body228_163

def body228_165 : Prog (BitVec 64) :=
.decCall ("ex") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("hdr_raw_field") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 12#64]) body228_164

def body228_166 : Prog (BitVec 64) :=
.seq body228_138 body228_165

def body228_167 : Prog (BitVec 64) :=
.decCall ("tsf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("hdr_uint_field") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 11#64, Flapjack.Exp.const 32#64]) body228_166

def body228_168 : Prog (BitVec 64) :=
.seq body228_136 body228_167

def body228_169 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("hdr_word_field") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 8#64]) body228_168

def body228_170 : Prog (BitVec 64) :=
.seq body228_21 body228_169

def body228_171 : Prog (BitVec 64) :=
.decCall ("d") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("hdr_u256_field") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 7#64, Flapjack.Exp.const 0#64]) body228_170

def body228_172 : Prog (BitVec 64) :=
.seq body228_132 body228_171

def body228_173 : Prog (BitVec 64) :=
.decCall ("f") (Flapjack.Shape.one) ("hdr_bytes_field") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 0#64, Flapjack.Exp.const 32#64]) body228_172

def body228_174 : Prog (BitVec 64) :=
.seq body228_7 body228_173

def body228_175 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 248#64]) body228_174

def body228_176 : Prog (BitVec 64) :=
.seq body228_6 body228_175

def body228_177 : Prog (BitVec 64) :=
.dec ("is_current") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body228_176

def body228_178 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "lst")) body228_177

def body228_179 : Prog (BitVec 64) :=
.dec ("arr") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "lst")) body228_178

def body228_180 : Prog (BitVec 64) :=
.decCall ("lst") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_list_to_slices") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "top"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "top")]) body228_179

def body228_181 : Prog (BitVec 64) :=
.seq body228_2 body228_180

def body228_182 : Prog (BitVec 64) :=
.decCall ("top") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_decode_fully") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "len"]) body228_181

def originalData228 : Decl (BitVec 64) :=
.function { name := "decode_header", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body228_120, returnShape := (Flapjack.Shape.one) }
def simplifiedData228 : Decl (BitVec 64) :=
.function { name := "decode_header", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body228_182, returnShape := (Flapjack.Shape.one) }
def original228 := Pancake.PanLang.declToHOL originalData228
def simplified228 := Pancake.PanLang.declToHOL simplifiedData228
end InitECandidate.Proofs.FrontendStages.Declarations

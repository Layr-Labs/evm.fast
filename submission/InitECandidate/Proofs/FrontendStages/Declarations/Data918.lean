import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify902
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body918_0 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body918_1 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 3#64)

def body918_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "nh") (Flapjack.Exp.const 0#64)) body918_1 body918_0

def body918_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "block_hashes"
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "vh"))

def body918_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "block_hashes_n" (Flapjack.Exp.var Flapjack.VarKind.local "nh")

def body918_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "state_init"
  [Flapjack.Exp.var Flapjack.VarKind.local "nodedb",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "parent", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "codedb"]

def body918_6 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 4#64)

def body918_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "txs",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64]))
  (Flapjack.Exp.const 0#64)) body918_6 body918_0

def body918_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body918_9 : Prog (BitVec 64) :=
.seq body918_7 body918_8

def body918_10 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "ntx")) body918_9

def body918_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "header_hash"
  [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.var Flapjack.VarKind.local "bh"]

def body918_12 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 5#64)

def body918_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body918_12 body918_0

def body918_14 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 6#64)

def body918_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "vvh") (Flapjack.Exp.const 0#64)) body918_14 body918_0

def body918_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "validate_header"
  [Flapjack.Exp.var Flapjack.VarKind.local "parent", Flapjack.Exp.var Flapjack.VarKind.local "hdr"]

def body918_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "be"), none)) "alloc" [Flapjack.Exp.const 120#64]

def body918_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 120#64]

def body918_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 88#64]))

def body918_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 104#64]))

def body918_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "block_hashes")

def body918_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "block_hashes_n")

def body918_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 24#64]))

def body918_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 96#64]))

def body918_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 160#64]))

def body918_26 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 120#64]))

def body918_27 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 144#64]))

def body918_28 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 208#64]))

def body918_29 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 216#64]))

def body918_30 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hdr", Flapjack.Exp.const 240#64]))

def body918_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "execute_block"
  [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.var Flapjack.VarKind.local "hdr"]

def body918_32 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body918_33 : Prog (BitVec 64) :=
.seq body918_0 body918_32

def body918_34 : Prog (BitVec 64) :=
.seq body918_31 body918_33

def body918_35 : Prog (BitVec 64) :=
.seq body918_0 body918_34

def body918_36 : Prog (BitVec 64) :=
.seq body918_30 body918_35

def body918_37 : Prog (BitVec 64) :=
.seq body918_29 body918_36

def body918_38 : Prog (BitVec 64) :=
.seq body918_28 body918_37

def body918_39 : Prog (BitVec 64) :=
.seq body918_27 body918_38

def body918_40 : Prog (BitVec 64) :=
.seq body918_26 body918_39

def body918_41 : Prog (BitVec 64) :=
.seq body918_25 body918_40

def body918_42 : Prog (BitVec 64) :=
.seq body918_24 body918_41

def body918_43 : Prog (BitVec 64) :=
.seq body918_23 body918_42

def body918_44 : Prog (BitVec 64) :=
.seq body918_22 body918_43

def body918_45 : Prog (BitVec 64) :=
.seq body918_21 body918_44

def body918_46 : Prog (BitVec 64) :=
.seq body918_20 body918_45

def body918_47 : Prog (BitVec 64) :=
.seq body918_19 body918_46

def body918_48 : Prog (BitVec 64) :=
.seq body918_18 body918_47

def body918_49 : Prog (BitVec 64) :=
.seq body918_17 body918_48

def body918_50 : Prog (BitVec 64) :=
.seq body918_0 body918_49

def body918_51 : Prog (BitVec 64) :=
.seq body918_16 body918_50

def body918_52 : Prog (BitVec 64) :=
.seq body918_0 body918_51

def body918_53 : Prog (BitVec 64) :=
.seq body918_15 body918_52

def body918_54 : Prog (BitVec 64) :=
.seq body918_0 body918_53

def body918_55 : Prog (BitVec 64) :=
.decCall ("vvh") (Flapjack.Shape.one) ("is_valid_versioned_hashes") ([Flapjack.Exp.var Flapjack.VarKind.local "si"]) body918_54

def body918_56 : Prog (BitVec 64) :=
.seq body918_0 body918_55

def body918_57 : Prog (BitVec 64) :=
.seq body918_13 body918_56

def body918_58 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "bh",
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 0#64]),
      Flapjack.Exp.const 472#64],
  Flapjack.Exp.const 32#64]) body918_57

def body918_59 : Prog (BitVec 64) :=
.seq body918_11 body918_58

def body918_60 : Prog (BitVec 64) :=
.decCall ("bh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body918_59

def body918_61 : Prog (BitVec 64) :=
.seq body918_0 body918_60

def body918_62 : Prog (BitVec 64) :=
.decCall ("hdr") (Flapjack.Shape.one) ("payload_header") ([Flapjack.Exp.var Flapjack.VarKind.local "si"]) body918_61

def body918_63 : Prog (BitVec 64) :=
.seq body918_0 body918_62

def body918_64 : Prog (BitVec 64) :=
.seq body918_10 body918_63

def body918_65 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body918_64

def body918_66 : Prog (BitVec 64) :=
.dec ("ntx") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 40#64])) body918_65

def body918_67 : Prog (BitVec 64) :=
.dec ("txs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 32#64])) body918_66

def body918_68 : Prog (BitVec 64) :=
.seq body918_0 body918_67

def body918_69 : Prog (BitVec 64) :=
.seq body918_5 body918_68

def body918_70 : Prog (BitVec 64) :=
.decCall ("codedb") (Flapjack.Shape.one) ("nodedb_build") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 56#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 64#64])]) body918_69

def body918_71 : Prog (BitVec 64) :=
.decCall ("nodedb") (Flapjack.Shape.one) ("nodedb_build") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 40#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 48#64])]) body918_70

def body918_72 : Prog (BitVec 64) :=
.seq body918_0 body918_71

def body918_73 : Prog (BitVec 64) :=
.seq body918_4 body918_72

def body918_74 : Prog (BitVec 64) :=
.seq body918_3 body918_73

def body918_75 : Prog (BitVec 64) :=
.dec ("parent") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "vh"),
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "nh", Flapjack.Exp.const 1#64],
          Flapjack.Exp.const 8#64]])) body918_74

def body918_76 : Prog (BitVec 64) :=
.seq body918_2 body918_75

def body918_77 : Prog (BitVec 64) :=
.dec ("nh") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 80#64])) body918_76

def body918_78 : Prog (BitVec 64) :=
.decCall ("vh") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("validate_headers") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 72#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 80#64])]) body918_77

def body918_79 : Prog (BitVec 64) :=
.seq body918_0 body918_78

def body918_80 : Prog (BitVec 64) :=
.dec ("pl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 0#64])) body918_79

def body918_81 : Prog (BitVec 64) :=
.seq body918_3 body918_4

def body918_82 : Prog (BitVec 64) :=
.seq body918_15 body918_16

def body918_83 : Prog (BitVec 64) :=
.seq body918_82 body918_17

def body918_84 : Prog (BitVec 64) :=
.seq body918_83 body918_18

def body918_85 : Prog (BitVec 64) :=
.seq body918_84 body918_19

def body918_86 : Prog (BitVec 64) :=
.seq body918_85 body918_20

def body918_87 : Prog (BitVec 64) :=
.seq body918_86 body918_21

def body918_88 : Prog (BitVec 64) :=
.seq body918_87 body918_22

def body918_89 : Prog (BitVec 64) :=
.seq body918_88 body918_23

def body918_90 : Prog (BitVec 64) :=
.seq body918_89 body918_24

def body918_91 : Prog (BitVec 64) :=
.seq body918_90 body918_25

def body918_92 : Prog (BitVec 64) :=
.seq body918_91 body918_26

def body918_93 : Prog (BitVec 64) :=
.seq body918_92 body918_27

def body918_94 : Prog (BitVec 64) :=
.seq body918_93 body918_28

def body918_95 : Prog (BitVec 64) :=
.seq body918_94 body918_29

def body918_96 : Prog (BitVec 64) :=
.seq body918_95 body918_30

def body918_97 : Prog (BitVec 64) :=
.seq body918_96 body918_31

def body918_98 : Prog (BitVec 64) :=
.seq body918_97 body918_32

def body918_99 : Prog (BitVec 64) :=
.decCall ("vvh") (Flapjack.Shape.one) ("is_valid_versioned_hashes") ([Flapjack.Exp.var Flapjack.VarKind.local "si"]) body918_98

def body918_100 : Prog (BitVec 64) :=
.seq body918_13 body918_99

def body918_101 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "bh",
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 0#64]),
      Flapjack.Exp.const 472#64],
  Flapjack.Exp.const 32#64]) body918_100

def body918_102 : Prog (BitVec 64) :=
.seq body918_11 body918_101

def body918_103 : Prog (BitVec 64) :=
.decCall ("bh") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body918_102

def body918_104 : Prog (BitVec 64) :=
.decCall ("hdr") (Flapjack.Shape.one) ("payload_header") ([Flapjack.Exp.var Flapjack.VarKind.local "si"]) body918_103

def body918_105 : Prog (BitVec 64) :=
.seq body918_10 body918_104

def body918_106 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body918_105

def body918_107 : Prog (BitVec 64) :=
.dec ("ntx") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 40#64])) body918_106

def body918_108 : Prog (BitVec 64) :=
.dec ("txs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 32#64])) body918_107

def body918_109 : Prog (BitVec 64) :=
.seq body918_5 body918_108

def body918_110 : Prog (BitVec 64) :=
.decCall ("codedb") (Flapjack.Shape.one) ("nodedb_build") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 56#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 64#64])]) body918_109

def body918_111 : Prog (BitVec 64) :=
.decCall ("nodedb") (Flapjack.Shape.one) ("nodedb_build") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 40#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 48#64])]) body918_110

def body918_112 : Prog (BitVec 64) :=
.seq body918_81 body918_111

def body918_113 : Prog (BitVec 64) :=
.dec ("parent") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "vh"),
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "nh", Flapjack.Exp.const 1#64],
          Flapjack.Exp.const 8#64]])) body918_112

def body918_114 : Prog (BitVec 64) :=
.seq body918_2 body918_113

def body918_115 : Prog (BitVec 64) :=
.dec ("nh") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 80#64])) body918_114

def body918_116 : Prog (BitVec 64) :=
.decCall ("vh") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("validate_headers") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 72#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 80#64])]) body918_115

def body918_117 : Prog (BitVec 64) :=
.dec ("pl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 0#64])) body918_116

def originalData918 : Decl (BitVec 64) :=
.function { name := "run_attempt", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body918_80, returnShape := (Flapjack.Shape.one) }
def simplifiedData918 : Decl (BitVec 64) :=
.function { name := "run_attempt", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body918_117, returnShape := (Flapjack.Shape.one) }
def original918 := Pancake.PanLang.declToHOL originalData918
def simplified918 := Pancake.PanLang.declToHOL simplifiedData918
end InitECandidate.Proofs.FrontendStages.Declarations

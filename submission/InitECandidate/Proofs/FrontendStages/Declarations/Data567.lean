import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify551
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body567_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "s") (Flapjack.Exp.const 84#64)

def body567_1 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 114#64)

def body567_2 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 2#64])
  (Flapjack.Exp.const 97#64)

def body567_3 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 3#64])
  (Flapjack.Exp.const 110#64)

def body567_4 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 4#64])
  (Flapjack.Exp.const 115#64)

def body567_5 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 5#64])
  (Flapjack.Exp.const 102#64)

def body567_6 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 6#64])
  (Flapjack.Exp.const 101#64)

def body567_7 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 114#64)

def body567_8 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 40#64)

def body567_9 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 9#64])
  (Flapjack.Exp.const 97#64)

def body567_10 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 10#64])
  (Flapjack.Exp.const 100#64)

def body567_11 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 11#64])
  (Flapjack.Exp.const 100#64)

def body567_12 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 12#64])
  (Flapjack.Exp.const 114#64)

def body567_13 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 13#64])
  (Flapjack.Exp.const 101#64)

def body567_14 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 14#64])
  (Flapjack.Exp.const 115#64)

def body567_15 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 15#64])
  (Flapjack.Exp.const 115#64)

def body567_16 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 44#64)

def body567_17 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 17#64])
  (Flapjack.Exp.const 97#64)

def body567_18 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 18#64])
  (Flapjack.Exp.const 100#64)

def body567_19 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 19#64])
  (Flapjack.Exp.const 100#64)

def body567_20 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 20#64])
  (Flapjack.Exp.const 114#64)

def body567_21 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 21#64])
  (Flapjack.Exp.const 101#64)

def body567_22 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 22#64])
  (Flapjack.Exp.const 115#64)

def body567_23 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 23#64])
  (Flapjack.Exp.const 115#64)

def body567_24 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 44#64)

def body567_25 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 25#64])
  (Flapjack.Exp.const 117#64)

def body567_26 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 26#64])
  (Flapjack.Exp.const 105#64)

def body567_27 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 27#64])
  (Flapjack.Exp.const 110#64)

def body567_28 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 28#64])
  (Flapjack.Exp.const 116#64)

def body567_29 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 29#64])
  (Flapjack.Exp.const 50#64)

def body567_30 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 30#64])
  (Flapjack.Exp.const 53#64)

def body567_31 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 31#64])
  (Flapjack.Exp.const 54#64)

def body567_32 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 41#64)

def body567_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body567_34 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "transfer_topic"), none)) "alloc" [Flapjack.Exp.const 32#64]

def body567_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 33#64,
    Flapjack.Exp.var Flapjack.VarKind.global "transfer_topic"]

def body567_36 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "vm_system_address"), none)) "alloc" [Flapjack.Exp.const 24#64]

def body567_37 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "vm_system_address", Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.const 255#64)

def body567_38 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body567_39 : Prog (BitVec 64) :=
.seq body567_37 body567_38

def body567_40 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 20#64)) body567_39

def body567_41 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "vm_system_address", Flapjack.Exp.const 19#64])
  (Flapjack.Exp.const 254#64)

def body567_42 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "null_address"), none)) "alloc" [Flapjack.Exp.const 24#64]

def body567_43 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.global "null_address", Flapjack.Exp.const 24#64]

def body567_44 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "evm_empty"), none)) "alloc" [Flapjack.Exp.const 8#64]

def body567_45 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.global "evm_empty", Flapjack.Exp.const 8#64]

def body567_46 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "evm_key_buf"), none)) "alloc" [Flapjack.Exp.const 32#64]

def body567_47 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "pre_hdr_buf"), none)) "alloc" [Flapjack.Exp.const 96#64]

def body567_48 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body567_49 : Prog (BitVec 64) :=
.seq body567_47 body567_48

def body567_50 : Prog (BitVec 64) :=
.seq body567_46 body567_49

def body567_51 : Prog (BitVec 64) :=
.seq body567_45 body567_50

def body567_52 : Prog (BitVec 64) :=
.seq body567_44 body567_51

def body567_53 : Prog (BitVec 64) :=
.seq body567_43 body567_52

def body567_54 : Prog (BitVec 64) :=
.seq body567_42 body567_53

def body567_55 : Prog (BitVec 64) :=
.seq body567_41 body567_54

def body567_56 : Prog (BitVec 64) :=
.seq body567_40 body567_55

def body567_57 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body567_56

def body567_58 : Prog (BitVec 64) :=
.seq body567_36 body567_57

def body567_59 : Prog (BitVec 64) :=
.seq body567_35 body567_58

def body567_60 : Prog (BitVec 64) :=
.seq body567_34 body567_59

def body567_61 : Prog (BitVec 64) :=
.seq body567_33 body567_60

def body567_62 : Prog (BitVec 64) :=
.seq body567_32 body567_61

def body567_63 : Prog (BitVec 64) :=
.seq body567_31 body567_62

def body567_64 : Prog (BitVec 64) :=
.seq body567_30 body567_63

def body567_65 : Prog (BitVec 64) :=
.seq body567_29 body567_64

def body567_66 : Prog (BitVec 64) :=
.seq body567_28 body567_65

def body567_67 : Prog (BitVec 64) :=
.seq body567_27 body567_66

def body567_68 : Prog (BitVec 64) :=
.seq body567_26 body567_67

def body567_69 : Prog (BitVec 64) :=
.seq body567_25 body567_68

def body567_70 : Prog (BitVec 64) :=
.seq body567_24 body567_69

def body567_71 : Prog (BitVec 64) :=
.seq body567_23 body567_70

def body567_72 : Prog (BitVec 64) :=
.seq body567_22 body567_71

def body567_73 : Prog (BitVec 64) :=
.seq body567_21 body567_72

def body567_74 : Prog (BitVec 64) :=
.seq body567_20 body567_73

def body567_75 : Prog (BitVec 64) :=
.seq body567_19 body567_74

def body567_76 : Prog (BitVec 64) :=
.seq body567_18 body567_75

def body567_77 : Prog (BitVec 64) :=
.seq body567_17 body567_76

def body567_78 : Prog (BitVec 64) :=
.seq body567_16 body567_77

def body567_79 : Prog (BitVec 64) :=
.seq body567_15 body567_78

def body567_80 : Prog (BitVec 64) :=
.seq body567_14 body567_79

def body567_81 : Prog (BitVec 64) :=
.seq body567_13 body567_80

def body567_82 : Prog (BitVec 64) :=
.seq body567_12 body567_81

def body567_83 : Prog (BitVec 64) :=
.seq body567_11 body567_82

def body567_84 : Prog (BitVec 64) :=
.seq body567_10 body567_83

def body567_85 : Prog (BitVec 64) :=
.seq body567_9 body567_84

def body567_86 : Prog (BitVec 64) :=
.seq body567_8 body567_85

def body567_87 : Prog (BitVec 64) :=
.seq body567_7 body567_86

def body567_88 : Prog (BitVec 64) :=
.seq body567_6 body567_87

def body567_89 : Prog (BitVec 64) :=
.seq body567_5 body567_88

def body567_90 : Prog (BitVec 64) :=
.seq body567_4 body567_89

def body567_91 : Prog (BitVec 64) :=
.seq body567_3 body567_90

def body567_92 : Prog (BitVec 64) :=
.seq body567_2 body567_91

def body567_93 : Prog (BitVec 64) :=
.seq body567_1 body567_92

def body567_94 : Prog (BitVec 64) :=
.seq body567_0 body567_93

def body567_95 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 40#64]) body567_94

def body567_96 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body567_95

def body567_97 : Prog (BitVec 64) :=
.seq body567_0 body567_1

def body567_98 : Prog (BitVec 64) :=
.seq body567_97 body567_2

def body567_99 : Prog (BitVec 64) :=
.seq body567_98 body567_3

def body567_100 : Prog (BitVec 64) :=
.seq body567_99 body567_4

def body567_101 : Prog (BitVec 64) :=
.seq body567_100 body567_5

def body567_102 : Prog (BitVec 64) :=
.seq body567_101 body567_6

def body567_103 : Prog (BitVec 64) :=
.seq body567_102 body567_7

def body567_104 : Prog (BitVec 64) :=
.seq body567_103 body567_8

def body567_105 : Prog (BitVec 64) :=
.seq body567_104 body567_9

def body567_106 : Prog (BitVec 64) :=
.seq body567_105 body567_10

def body567_107 : Prog (BitVec 64) :=
.seq body567_106 body567_11

def body567_108 : Prog (BitVec 64) :=
.seq body567_107 body567_12

def body567_109 : Prog (BitVec 64) :=
.seq body567_108 body567_13

def body567_110 : Prog (BitVec 64) :=
.seq body567_109 body567_14

def body567_111 : Prog (BitVec 64) :=
.seq body567_110 body567_15

def body567_112 : Prog (BitVec 64) :=
.seq body567_111 body567_16

def body567_113 : Prog (BitVec 64) :=
.seq body567_112 body567_17

def body567_114 : Prog (BitVec 64) :=
.seq body567_113 body567_18

def body567_115 : Prog (BitVec 64) :=
.seq body567_114 body567_19

def body567_116 : Prog (BitVec 64) :=
.seq body567_115 body567_20

def body567_117 : Prog (BitVec 64) :=
.seq body567_116 body567_21

def body567_118 : Prog (BitVec 64) :=
.seq body567_117 body567_22

def body567_119 : Prog (BitVec 64) :=
.seq body567_118 body567_23

def body567_120 : Prog (BitVec 64) :=
.seq body567_119 body567_24

def body567_121 : Prog (BitVec 64) :=
.seq body567_120 body567_25

def body567_122 : Prog (BitVec 64) :=
.seq body567_121 body567_26

def body567_123 : Prog (BitVec 64) :=
.seq body567_122 body567_27

def body567_124 : Prog (BitVec 64) :=
.seq body567_123 body567_28

def body567_125 : Prog (BitVec 64) :=
.seq body567_124 body567_29

def body567_126 : Prog (BitVec 64) :=
.seq body567_125 body567_30

def body567_127 : Prog (BitVec 64) :=
.seq body567_126 body567_31

def body567_128 : Prog (BitVec 64) :=
.seq body567_127 body567_32

def body567_129 : Prog (BitVec 64) :=
.seq body567_128 body567_33

def body567_130 : Prog (BitVec 64) :=
.seq body567_129 body567_34

def body567_131 : Prog (BitVec 64) :=
.seq body567_130 body567_35

def body567_132 : Prog (BitVec 64) :=
.seq body567_131 body567_36

def body567_133 : Prog (BitVec 64) :=
.seq body567_40 body567_41

def body567_134 : Prog (BitVec 64) :=
.seq body567_133 body567_42

def body567_135 : Prog (BitVec 64) :=
.seq body567_134 body567_43

def body567_136 : Prog (BitVec 64) :=
.seq body567_135 body567_44

def body567_137 : Prog (BitVec 64) :=
.seq body567_136 body567_45

def body567_138 : Prog (BitVec 64) :=
.seq body567_137 body567_46

def body567_139 : Prog (BitVec 64) :=
.seq body567_138 body567_47

def body567_140 : Prog (BitVec 64) :=
.seq body567_139 body567_48

def body567_141 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body567_140

def body567_142 : Prog (BitVec 64) :=
.seq body567_132 body567_141

def body567_143 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 40#64]) body567_142

def body567_144 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body567_143

def originalData567 : Decl (BitVec 64) :=
.function { name := "evm_init", inline := false, exported := false, params := [], body := body567_96, returnShape := (Flapjack.Shape.one) }
def simplifiedData567 : Decl (BitVec 64) :=
.function { name := "evm_init", inline := false, exported := false, params := [], body := body567_144, returnShape := (Flapjack.Shape.one) }
def original567 := Pancake.PanLang.declToHOL originalData567
def simplified567 := Pancake.PanLang.declToHOL simplifiedData567
end InitECandidate.Proofs.FrontendStages.Declarations

import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data578
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate558
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody578_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_stop" []

def globalBody578_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody578_2 : Prog (BitVec 64) :=
.seq globalBody578_0 globalBody578_1

def globalBody578_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody578_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 0#64)) globalBody578_2 globalBody578_3

def globalBody578_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_add" []

def globalBody578_6 : Prog (BitVec 64) :=
.seq globalBody578_5 globalBody578_1

def globalBody578_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 1#64)) globalBody578_6 globalBody578_3

def globalBody578_8 : Prog (BitVec 64) :=
.seq globalBody578_4 globalBody578_7

def globalBody578_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_mul" []

def globalBody578_10 : Prog (BitVec 64) :=
.seq globalBody578_9 globalBody578_1

def globalBody578_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 2#64)) globalBody578_10 globalBody578_3

def globalBody578_12 : Prog (BitVec 64) :=
.seq globalBody578_8 globalBody578_11

def globalBody578_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_sub" []

def globalBody578_14 : Prog (BitVec 64) :=
.seq globalBody578_13 globalBody578_1

def globalBody578_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 3#64)) globalBody578_14 globalBody578_3

def globalBody578_16 : Prog (BitVec 64) :=
.seq globalBody578_12 globalBody578_15

def globalBody578_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_div" []

def globalBody578_18 : Prog (BitVec 64) :=
.seq globalBody578_17 globalBody578_1

def globalBody578_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 4#64)) globalBody578_18 globalBody578_3

def globalBody578_20 : Prog (BitVec 64) :=
.seq globalBody578_16 globalBody578_19

def globalBody578_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_sdiv" []

def globalBody578_22 : Prog (BitVec 64) :=
.seq globalBody578_21 globalBody578_1

def globalBody578_23 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 5#64)) globalBody578_22 globalBody578_3

def globalBody578_24 : Prog (BitVec 64) :=
.seq globalBody578_20 globalBody578_23

def globalBody578_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_mod" []

def globalBody578_26 : Prog (BitVec 64) :=
.seq globalBody578_25 globalBody578_1

def globalBody578_27 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 6#64)) globalBody578_26 globalBody578_3

def globalBody578_28 : Prog (BitVec 64) :=
.seq globalBody578_24 globalBody578_27

def globalBody578_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_smod" []

def globalBody578_30 : Prog (BitVec 64) :=
.seq globalBody578_29 globalBody578_1

def globalBody578_31 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 7#64)) globalBody578_30 globalBody578_3

def globalBody578_32 : Prog (BitVec 64) :=
.seq globalBody578_28 globalBody578_31

def globalBody578_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_addmod" []

def globalBody578_34 : Prog (BitVec 64) :=
.seq globalBody578_33 globalBody578_1

def globalBody578_35 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 8#64)) globalBody578_34 globalBody578_3

def globalBody578_36 : Prog (BitVec 64) :=
.seq globalBody578_32 globalBody578_35

def globalBody578_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_mulmod" []

def globalBody578_38 : Prog (BitVec 64) :=
.seq globalBody578_37 globalBody578_1

def globalBody578_39 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 9#64)) globalBody578_38 globalBody578_3

def globalBody578_40 : Prog (BitVec 64) :=
.seq globalBody578_36 globalBody578_39

def globalBody578_41 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_exp" []

def globalBody578_42 : Prog (BitVec 64) :=
.seq globalBody578_41 globalBody578_1

def globalBody578_43 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 10#64)) globalBody578_42 globalBody578_3

def globalBody578_44 : Prog (BitVec 64) :=
.seq globalBody578_40 globalBody578_43

def globalBody578_45 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_signextend" []

def globalBody578_46 : Prog (BitVec 64) :=
.seq globalBody578_45 globalBody578_1

def globalBody578_47 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 11#64)) globalBody578_46 globalBody578_3

def globalBody578_48 : Prog (BitVec 64) :=
.seq globalBody578_44 globalBody578_47

def globalBody578_49 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_lt" []

def globalBody578_50 : Prog (BitVec 64) :=
.seq globalBody578_49 globalBody578_1

def globalBody578_51 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 16#64)) globalBody578_50 globalBody578_3

def globalBody578_52 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_gt" []

def globalBody578_53 : Prog (BitVec 64) :=
.seq globalBody578_52 globalBody578_1

def globalBody578_54 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 17#64)) globalBody578_53 globalBody578_3

def globalBody578_55 : Prog (BitVec 64) :=
.seq globalBody578_51 globalBody578_54

def globalBody578_56 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_slt" []

def globalBody578_57 : Prog (BitVec 64) :=
.seq globalBody578_56 globalBody578_1

def globalBody578_58 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 18#64)) globalBody578_57 globalBody578_3

def globalBody578_59 : Prog (BitVec 64) :=
.seq globalBody578_55 globalBody578_58

def globalBody578_60 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_sgt" []

def globalBody578_61 : Prog (BitVec 64) :=
.seq globalBody578_60 globalBody578_1

def globalBody578_62 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 19#64)) globalBody578_61 globalBody578_3

def globalBody578_63 : Prog (BitVec 64) :=
.seq globalBody578_59 globalBody578_62

def globalBody578_64 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_eq" []

def globalBody578_65 : Prog (BitVec 64) :=
.seq globalBody578_64 globalBody578_1

def globalBody578_66 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 20#64)) globalBody578_65 globalBody578_3

def globalBody578_67 : Prog (BitVec 64) :=
.seq globalBody578_63 globalBody578_66

def globalBody578_68 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_iszero" []

def globalBody578_69 : Prog (BitVec 64) :=
.seq globalBody578_68 globalBody578_1

def globalBody578_70 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 21#64)) globalBody578_69 globalBody578_3

def globalBody578_71 : Prog (BitVec 64) :=
.seq globalBody578_67 globalBody578_70

def globalBody578_72 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_and" []

def globalBody578_73 : Prog (BitVec 64) :=
.seq globalBody578_72 globalBody578_1

def globalBody578_74 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 22#64)) globalBody578_73 globalBody578_3

def globalBody578_75 : Prog (BitVec 64) :=
.seq globalBody578_71 globalBody578_74

def globalBody578_76 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_or" []

def globalBody578_77 : Prog (BitVec 64) :=
.seq globalBody578_76 globalBody578_1

def globalBody578_78 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 23#64)) globalBody578_77 globalBody578_3

def globalBody578_79 : Prog (BitVec 64) :=
.seq globalBody578_75 globalBody578_78

def globalBody578_80 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_xor" []

def globalBody578_81 : Prog (BitVec 64) :=
.seq globalBody578_80 globalBody578_1

def globalBody578_82 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 24#64)) globalBody578_81 globalBody578_3

def globalBody578_83 : Prog (BitVec 64) :=
.seq globalBody578_79 globalBody578_82

def globalBody578_84 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_not" []

def globalBody578_85 : Prog (BitVec 64) :=
.seq globalBody578_84 globalBody578_1

def globalBody578_86 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 25#64)) globalBody578_85 globalBody578_3

def globalBody578_87 : Prog (BitVec 64) :=
.seq globalBody578_83 globalBody578_86

def globalBody578_88 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_byte" []

def globalBody578_89 : Prog (BitVec 64) :=
.seq globalBody578_88 globalBody578_1

def globalBody578_90 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 26#64)) globalBody578_89 globalBody578_3

def globalBody578_91 : Prog (BitVec 64) :=
.seq globalBody578_87 globalBody578_90

def globalBody578_92 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_shl" []

def globalBody578_93 : Prog (BitVec 64) :=
.seq globalBody578_92 globalBody578_1

def globalBody578_94 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 27#64)) globalBody578_93 globalBody578_3

def globalBody578_95 : Prog (BitVec 64) :=
.seq globalBody578_91 globalBody578_94

def globalBody578_96 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_shr" []

def globalBody578_97 : Prog (BitVec 64) :=
.seq globalBody578_96 globalBody578_1

def globalBody578_98 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 28#64)) globalBody578_97 globalBody578_3

def globalBody578_99 : Prog (BitVec 64) :=
.seq globalBody578_95 globalBody578_98

def globalBody578_100 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_sar" []

def globalBody578_101 : Prog (BitVec 64) :=
.seq globalBody578_100 globalBody578_1

def globalBody578_102 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 29#64)) globalBody578_101 globalBody578_3

def globalBody578_103 : Prog (BitVec 64) :=
.seq globalBody578_99 globalBody578_102

def globalBody578_104 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_clz" []

def globalBody578_105 : Prog (BitVec 64) :=
.seq globalBody578_104 globalBody578_1

def globalBody578_106 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 30#64)) globalBody578_105 globalBody578_3

def globalBody578_107 : Prog (BitVec 64) :=
.seq globalBody578_103 globalBody578_106

def globalBody578_108 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 16#64)) globalBody578_48 globalBody578_107

def globalBody578_109 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 5#64)

def globalBody578_110 : Prog (BitVec 64) :=
.seq globalBody578_108 globalBody578_109

def globalBody578_111 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 32#64)) globalBody578_110 globalBody578_3

def globalBody578_112 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_keccak" []

def globalBody578_113 : Prog (BitVec 64) :=
.seq globalBody578_112 globalBody578_1

def globalBody578_114 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 32#64)) globalBody578_113 globalBody578_3

def globalBody578_115 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_address" []

def globalBody578_116 : Prog (BitVec 64) :=
.seq globalBody578_115 globalBody578_1

def globalBody578_117 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 48#64)) globalBody578_116 globalBody578_3

def globalBody578_118 : Prog (BitVec 64) :=
.seq globalBody578_114 globalBody578_117

def globalBody578_119 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_balance" []

def globalBody578_120 : Prog (BitVec 64) :=
.seq globalBody578_119 globalBody578_1

def globalBody578_121 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 49#64)) globalBody578_120 globalBody578_3

def globalBody578_122 : Prog (BitVec 64) :=
.seq globalBody578_118 globalBody578_121

def globalBody578_123 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_origin" []

def globalBody578_124 : Prog (BitVec 64) :=
.seq globalBody578_123 globalBody578_1

def globalBody578_125 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 50#64)) globalBody578_124 globalBody578_3

def globalBody578_126 : Prog (BitVec 64) :=
.seq globalBody578_122 globalBody578_125

def globalBody578_127 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_caller" []

def globalBody578_128 : Prog (BitVec 64) :=
.seq globalBody578_127 globalBody578_1

def globalBody578_129 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 51#64)) globalBody578_128 globalBody578_3

def globalBody578_130 : Prog (BitVec 64) :=
.seq globalBody578_126 globalBody578_129

def globalBody578_131 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_callvalue" []

def globalBody578_132 : Prog (BitVec 64) :=
.seq globalBody578_131 globalBody578_1

def globalBody578_133 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 52#64)) globalBody578_132 globalBody578_3

def globalBody578_134 : Prog (BitVec 64) :=
.seq globalBody578_130 globalBody578_133

def globalBody578_135 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_calldataload" []

def globalBody578_136 : Prog (BitVec 64) :=
.seq globalBody578_135 globalBody578_1

def globalBody578_137 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 53#64)) globalBody578_136 globalBody578_3

def globalBody578_138 : Prog (BitVec 64) :=
.seq globalBody578_134 globalBody578_137

def globalBody578_139 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_calldatasize" []

def globalBody578_140 : Prog (BitVec 64) :=
.seq globalBody578_139 globalBody578_1

def globalBody578_141 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 54#64)) globalBody578_140 globalBody578_3

def globalBody578_142 : Prog (BitVec 64) :=
.seq globalBody578_138 globalBody578_141

def globalBody578_143 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_calldatacopy" []

def globalBody578_144 : Prog (BitVec 64) :=
.seq globalBody578_143 globalBody578_1

def globalBody578_145 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 55#64)) globalBody578_144 globalBody578_3

def globalBody578_146 : Prog (BitVec 64) :=
.seq globalBody578_142 globalBody578_145

def globalBody578_147 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_codesize" []

def globalBody578_148 : Prog (BitVec 64) :=
.seq globalBody578_147 globalBody578_1

def globalBody578_149 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 56#64)) globalBody578_148 globalBody578_3

def globalBody578_150 : Prog (BitVec 64) :=
.seq globalBody578_146 globalBody578_149

def globalBody578_151 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_codecopy" []

def globalBody578_152 : Prog (BitVec 64) :=
.seq globalBody578_151 globalBody578_1

def globalBody578_153 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 57#64)) globalBody578_152 globalBody578_3

def globalBody578_154 : Prog (BitVec 64) :=
.seq globalBody578_150 globalBody578_153

def globalBody578_155 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_gasprice" []

def globalBody578_156 : Prog (BitVec 64) :=
.seq globalBody578_155 globalBody578_1

def globalBody578_157 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 58#64)) globalBody578_156 globalBody578_3

def globalBody578_158 : Prog (BitVec 64) :=
.seq globalBody578_154 globalBody578_157

def globalBody578_159 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_extcodesize" []

def globalBody578_160 : Prog (BitVec 64) :=
.seq globalBody578_159 globalBody578_1

def globalBody578_161 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 59#64)) globalBody578_160 globalBody578_3

def globalBody578_162 : Prog (BitVec 64) :=
.seq globalBody578_158 globalBody578_161

def globalBody578_163 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_extcodecopy" []

def globalBody578_164 : Prog (BitVec 64) :=
.seq globalBody578_163 globalBody578_1

def globalBody578_165 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 60#64)) globalBody578_164 globalBody578_3

def globalBody578_166 : Prog (BitVec 64) :=
.seq globalBody578_162 globalBody578_165

def globalBody578_167 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_returndatasize" []

def globalBody578_168 : Prog (BitVec 64) :=
.seq globalBody578_167 globalBody578_1

def globalBody578_169 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 61#64)) globalBody578_168 globalBody578_3

def globalBody578_170 : Prog (BitVec 64) :=
.seq globalBody578_166 globalBody578_169

def globalBody578_171 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_returndatacopy" []

def globalBody578_172 : Prog (BitVec 64) :=
.seq globalBody578_171 globalBody578_1

def globalBody578_173 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 62#64)) globalBody578_172 globalBody578_3

def globalBody578_174 : Prog (BitVec 64) :=
.seq globalBody578_170 globalBody578_173

def globalBody578_175 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_extcodehash" []

def globalBody578_176 : Prog (BitVec 64) :=
.seq globalBody578_175 globalBody578_1

def globalBody578_177 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 63#64)) globalBody578_176 globalBody578_3

def globalBody578_178 : Prog (BitVec 64) :=
.seq globalBody578_174 globalBody578_177

def globalBody578_179 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_blockhash" []

def globalBody578_180 : Prog (BitVec 64) :=
.seq globalBody578_179 globalBody578_1

def globalBody578_181 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 64#64)) globalBody578_180 globalBody578_3

def globalBody578_182 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_coinbase" []

def globalBody578_183 : Prog (BitVec 64) :=
.seq globalBody578_182 globalBody578_1

def globalBody578_184 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 65#64)) globalBody578_183 globalBody578_3

def globalBody578_185 : Prog (BitVec 64) :=
.seq globalBody578_181 globalBody578_184

def globalBody578_186 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_timestamp" []

def globalBody578_187 : Prog (BitVec 64) :=
.seq globalBody578_186 globalBody578_1

def globalBody578_188 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 66#64)) globalBody578_187 globalBody578_3

def globalBody578_189 : Prog (BitVec 64) :=
.seq globalBody578_185 globalBody578_188

def globalBody578_190 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_number" []

def globalBody578_191 : Prog (BitVec 64) :=
.seq globalBody578_190 globalBody578_1

def globalBody578_192 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 67#64)) globalBody578_191 globalBody578_3

def globalBody578_193 : Prog (BitVec 64) :=
.seq globalBody578_189 globalBody578_192

def globalBody578_194 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_prevrandao" []

def globalBody578_195 : Prog (BitVec 64) :=
.seq globalBody578_194 globalBody578_1

def globalBody578_196 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 68#64)) globalBody578_195 globalBody578_3

def globalBody578_197 : Prog (BitVec 64) :=
.seq globalBody578_193 globalBody578_196

def globalBody578_198 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_gaslimit" []

def globalBody578_199 : Prog (BitVec 64) :=
.seq globalBody578_198 globalBody578_1

def globalBody578_200 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 69#64)) globalBody578_199 globalBody578_3

def globalBody578_201 : Prog (BitVec 64) :=
.seq globalBody578_197 globalBody578_200

def globalBody578_202 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_chainid" []

def globalBody578_203 : Prog (BitVec 64) :=
.seq globalBody578_202 globalBody578_1

def globalBody578_204 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 70#64)) globalBody578_203 globalBody578_3

def globalBody578_205 : Prog (BitVec 64) :=
.seq globalBody578_201 globalBody578_204

def globalBody578_206 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_selfbalance" []

def globalBody578_207 : Prog (BitVec 64) :=
.seq globalBody578_206 globalBody578_1

def globalBody578_208 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 71#64)) globalBody578_207 globalBody578_3

def globalBody578_209 : Prog (BitVec 64) :=
.seq globalBody578_205 globalBody578_208

def globalBody578_210 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_basefee" []

def globalBody578_211 : Prog (BitVec 64) :=
.seq globalBody578_210 globalBody578_1

def globalBody578_212 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 72#64)) globalBody578_211 globalBody578_3

def globalBody578_213 : Prog (BitVec 64) :=
.seq globalBody578_209 globalBody578_212

def globalBody578_214 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_blobhash" []

def globalBody578_215 : Prog (BitVec 64) :=
.seq globalBody578_214 globalBody578_1

def globalBody578_216 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 73#64)) globalBody578_215 globalBody578_3

def globalBody578_217 : Prog (BitVec 64) :=
.seq globalBody578_213 globalBody578_216

def globalBody578_218 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_blobbasefee" []

def globalBody578_219 : Prog (BitVec 64) :=
.seq globalBody578_218 globalBody578_1

def globalBody578_220 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 74#64)) globalBody578_219 globalBody578_3

def globalBody578_221 : Prog (BitVec 64) :=
.seq globalBody578_217 globalBody578_220

def globalBody578_222 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_slotnum" []

def globalBody578_223 : Prog (BitVec 64) :=
.seq globalBody578_222 globalBody578_1

def globalBody578_224 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 75#64)) globalBody578_223 globalBody578_3

def globalBody578_225 : Prog (BitVec 64) :=
.seq globalBody578_221 globalBody578_224

def globalBody578_226 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_pop" []

def globalBody578_227 : Prog (BitVec 64) :=
.seq globalBody578_226 globalBody578_1

def globalBody578_228 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 80#64)) globalBody578_227 globalBody578_3

def globalBody578_229 : Prog (BitVec 64) :=
.seq globalBody578_225 globalBody578_228

def globalBody578_230 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_mload" []

def globalBody578_231 : Prog (BitVec 64) :=
.seq globalBody578_230 globalBody578_1

def globalBody578_232 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 81#64)) globalBody578_231 globalBody578_3

def globalBody578_233 : Prog (BitVec 64) :=
.seq globalBody578_229 globalBody578_232

def globalBody578_234 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_mstore" []

def globalBody578_235 : Prog (BitVec 64) :=
.seq globalBody578_234 globalBody578_1

def globalBody578_236 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 82#64)) globalBody578_235 globalBody578_3

def globalBody578_237 : Prog (BitVec 64) :=
.seq globalBody578_233 globalBody578_236

def globalBody578_238 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_mstore8" []

def globalBody578_239 : Prog (BitVec 64) :=
.seq globalBody578_238 globalBody578_1

def globalBody578_240 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 83#64)) globalBody578_239 globalBody578_3

def globalBody578_241 : Prog (BitVec 64) :=
.seq globalBody578_237 globalBody578_240

def globalBody578_242 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_sload" []

def globalBody578_243 : Prog (BitVec 64) :=
.seq globalBody578_242 globalBody578_1

def globalBody578_244 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 84#64)) globalBody578_243 globalBody578_3

def globalBody578_245 : Prog (BitVec 64) :=
.seq globalBody578_241 globalBody578_244

def globalBody578_246 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_sstore" []

def globalBody578_247 : Prog (BitVec 64) :=
.seq globalBody578_246 globalBody578_1

def globalBody578_248 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 85#64)) globalBody578_247 globalBody578_3

def globalBody578_249 : Prog (BitVec 64) :=
.seq globalBody578_245 globalBody578_248

def globalBody578_250 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_jump" []

def globalBody578_251 : Prog (BitVec 64) :=
.seq globalBody578_250 globalBody578_1

def globalBody578_252 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 86#64)) globalBody578_251 globalBody578_3

def globalBody578_253 : Prog (BitVec 64) :=
.seq globalBody578_249 globalBody578_252

def globalBody578_254 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_jumpi" []

def globalBody578_255 : Prog (BitVec 64) :=
.seq globalBody578_254 globalBody578_1

def globalBody578_256 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 87#64)) globalBody578_255 globalBody578_3

def globalBody578_257 : Prog (BitVec 64) :=
.seq globalBody578_253 globalBody578_256

def globalBody578_258 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_pc" []

def globalBody578_259 : Prog (BitVec 64) :=
.seq globalBody578_258 globalBody578_1

def globalBody578_260 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 88#64)) globalBody578_259 globalBody578_3

def globalBody578_261 : Prog (BitVec 64) :=
.seq globalBody578_257 globalBody578_260

def globalBody578_262 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_msize" []

def globalBody578_263 : Prog (BitVec 64) :=
.seq globalBody578_262 globalBody578_1

def globalBody578_264 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 89#64)) globalBody578_263 globalBody578_3

def globalBody578_265 : Prog (BitVec 64) :=
.seq globalBody578_261 globalBody578_264

def globalBody578_266 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_gas" []

def globalBody578_267 : Prog (BitVec 64) :=
.seq globalBody578_266 globalBody578_1

def globalBody578_268 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 90#64)) globalBody578_267 globalBody578_3

def globalBody578_269 : Prog (BitVec 64) :=
.seq globalBody578_265 globalBody578_268

def globalBody578_270 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_jumpdest" []

def globalBody578_271 : Prog (BitVec 64) :=
.seq globalBody578_270 globalBody578_1

def globalBody578_272 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 91#64)) globalBody578_271 globalBody578_3

def globalBody578_273 : Prog (BitVec 64) :=
.seq globalBody578_269 globalBody578_272

def globalBody578_274 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_tload" []

def globalBody578_275 : Prog (BitVec 64) :=
.seq globalBody578_274 globalBody578_1

def globalBody578_276 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 92#64)) globalBody578_275 globalBody578_3

def globalBody578_277 : Prog (BitVec 64) :=
.seq globalBody578_273 globalBody578_276

def globalBody578_278 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_tstore" []

def globalBody578_279 : Prog (BitVec 64) :=
.seq globalBody578_278 globalBody578_1

def globalBody578_280 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 93#64)) globalBody578_279 globalBody578_3

def globalBody578_281 : Prog (BitVec 64) :=
.seq globalBody578_277 globalBody578_280

def globalBody578_282 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_mcopy" []

def globalBody578_283 : Prog (BitVec 64) :=
.seq globalBody578_282 globalBody578_1

def globalBody578_284 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 94#64)) globalBody578_283 globalBody578_3

def globalBody578_285 : Prog (BitVec 64) :=
.seq globalBody578_281 globalBody578_284

def globalBody578_286 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_push" [Flapjack.Exp.const 0#64]

def globalBody578_287 : Prog (BitVec 64) :=
.seq globalBody578_286 globalBody578_1

def globalBody578_288 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 95#64)) globalBody578_287 globalBody578_3

def globalBody578_289 : Prog (BitVec 64) :=
.seq globalBody578_285 globalBody578_288

def globalBody578_290 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 64#64)) globalBody578_178 globalBody578_289

def globalBody578_291 : Prog (BitVec 64) :=
.seq globalBody578_290 globalBody578_109

def globalBody578_292 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 96#64)) globalBody578_291 globalBody578_3

def globalBody578_293 : Prog (BitVec 64) :=
.seq globalBody578_111 globalBody578_292

def globalBody578_294 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_push"
  [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "op", Flapjack.Exp.const 95#64]]

def globalBody578_295 : Prog (BitVec 64) :=
.seq globalBody578_294 globalBody578_1

def globalBody578_296 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 128#64)) globalBody578_295 globalBody578_3

def globalBody578_297 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_dup"
  [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "op", Flapjack.Exp.const 128#64]]

def globalBody578_298 : Prog (BitVec 64) :=
.seq globalBody578_297 globalBody578_1

def globalBody578_299 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 144#64)) globalBody578_298 globalBody578_3

def globalBody578_300 : Prog (BitVec 64) :=
.seq globalBody578_296 globalBody578_299

def globalBody578_301 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_swap"
  [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "op", Flapjack.Exp.const 143#64]]

def globalBody578_302 : Prog (BitVec 64) :=
.seq globalBody578_300 globalBody578_301

def globalBody578_303 : Prog (BitVec 64) :=
.seq globalBody578_302 globalBody578_1

def globalBody578_304 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 160#64)) globalBody578_303 globalBody578_3

def globalBody578_305 : Prog (BitVec 64) :=
.seq globalBody578_293 globalBody578_304

def globalBody578_306 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_log"
  [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "op", Flapjack.Exp.const 160#64]]

def globalBody578_307 : Prog (BitVec 64) :=
.seq globalBody578_306 globalBody578_1

def globalBody578_308 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 165#64)) globalBody578_307 globalBody578_3

def globalBody578_309 : Prog (BitVec 64) :=
.seq globalBody578_305 globalBody578_308

def globalBody578_310 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_dupn" []

def globalBody578_311 : Prog (BitVec 64) :=
.seq globalBody578_310 globalBody578_1

def globalBody578_312 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 230#64)) globalBody578_311 globalBody578_3

def globalBody578_313 : Prog (BitVec 64) :=
.seq globalBody578_309 globalBody578_312

def globalBody578_314 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_swapn" []

def globalBody578_315 : Prog (BitVec 64) :=
.seq globalBody578_314 globalBody578_1

def globalBody578_316 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 231#64)) globalBody578_315 globalBody578_3

def globalBody578_317 : Prog (BitVec 64) :=
.seq globalBody578_313 globalBody578_316

def globalBody578_318 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_exchange" []

def globalBody578_319 : Prog (BitVec 64) :=
.seq globalBody578_318 globalBody578_1

def globalBody578_320 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 232#64)) globalBody578_319 globalBody578_3

def globalBody578_321 : Prog (BitVec 64) :=
.seq globalBody578_317 globalBody578_320

def globalBody578_322 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_create" []

def globalBody578_323 : Prog (BitVec 64) :=
.seq globalBody578_322 globalBody578_1

def globalBody578_324 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 240#64)) globalBody578_323 globalBody578_3

def globalBody578_325 : Prog (BitVec 64) :=
.seq globalBody578_321 globalBody578_324

def globalBody578_326 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_call" []

def globalBody578_327 : Prog (BitVec 64) :=
.seq globalBody578_326 globalBody578_1

def globalBody578_328 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 241#64)) globalBody578_327 globalBody578_3

def globalBody578_329 : Prog (BitVec 64) :=
.seq globalBody578_325 globalBody578_328

def globalBody578_330 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_callcode" []

def globalBody578_331 : Prog (BitVec 64) :=
.seq globalBody578_330 globalBody578_1

def globalBody578_332 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 242#64)) globalBody578_331 globalBody578_3

def globalBody578_333 : Prog (BitVec 64) :=
.seq globalBody578_329 globalBody578_332

def globalBody578_334 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_return" []

def globalBody578_335 : Prog (BitVec 64) :=
.seq globalBody578_334 globalBody578_1

def globalBody578_336 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 243#64)) globalBody578_335 globalBody578_3

def globalBody578_337 : Prog (BitVec 64) :=
.seq globalBody578_333 globalBody578_336

def globalBody578_338 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_delegatecall" []

def globalBody578_339 : Prog (BitVec 64) :=
.seq globalBody578_338 globalBody578_1

def globalBody578_340 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 244#64)) globalBody578_339 globalBody578_3

def globalBody578_341 : Prog (BitVec 64) :=
.seq globalBody578_337 globalBody578_340

def globalBody578_342 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_create2" []

def globalBody578_343 : Prog (BitVec 64) :=
.seq globalBody578_342 globalBody578_1

def globalBody578_344 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 245#64)) globalBody578_343 globalBody578_3

def globalBody578_345 : Prog (BitVec 64) :=
.seq globalBody578_341 globalBody578_344

def globalBody578_346 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_staticcall" []

def globalBody578_347 : Prog (BitVec 64) :=
.seq globalBody578_346 globalBody578_1

def globalBody578_348 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 250#64)) globalBody578_347 globalBody578_3

def globalBody578_349 : Prog (BitVec 64) :=
.seq globalBody578_345 globalBody578_348

def globalBody578_350 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_revert" []

def globalBody578_351 : Prog (BitVec 64) :=
.seq globalBody578_350 globalBody578_1

def globalBody578_352 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 253#64)) globalBody578_351 globalBody578_3

def globalBody578_353 : Prog (BitVec 64) :=
.seq globalBody578_349 globalBody578_352

def globalBody578_354 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_selfdestruct" []

def globalBody578_355 : Prog (BitVec 64) :=
.seq globalBody578_354 globalBody578_1

def globalBody578_356 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 255#64)) globalBody578_355 globalBody578_3

def globalBody578_357 : Prog (BitVec 64) :=
.seq globalBody578_353 globalBody578_356

def globalBody578_358 : Prog (BitVec 64) :=
.seq globalBody578_357 globalBody578_109

def globalBody578_359 : Prog (BitVec 64) :=
.seq globalBody578_358 globalBody578_1

def globalData578 : Decl (BitVec 64) :=
.function { name := "op_dispatch", inline := false, exported := false, params := [("op", Flapjack.Shape.one)], body := globalBody578_359, returnShape := (Flapjack.Shape.one) }
def globalOutput578 := Pancake.PanLang.declToHOL globalData578
end InitECandidate.Proofs.FrontendStages.Declarations

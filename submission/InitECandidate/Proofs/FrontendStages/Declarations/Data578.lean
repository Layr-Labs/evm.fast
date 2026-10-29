import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify562
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body578_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_stop" []

def body578_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body578_2 : Prog (BitVec 64) :=
.seq body578_0 body578_1

def body578_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body578_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 0#64)) body578_2 body578_3

def body578_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_add" []

def body578_6 : Prog (BitVec 64) :=
.seq body578_5 body578_1

def body578_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 1#64)) body578_6 body578_3

def body578_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_mul" []

def body578_9 : Prog (BitVec 64) :=
.seq body578_8 body578_1

def body578_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 2#64)) body578_9 body578_3

def body578_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_sub" []

def body578_12 : Prog (BitVec 64) :=
.seq body578_11 body578_1

def body578_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 3#64)) body578_12 body578_3

def body578_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_div" []

def body578_15 : Prog (BitVec 64) :=
.seq body578_14 body578_1

def body578_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 4#64)) body578_15 body578_3

def body578_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_sdiv" []

def body578_18 : Prog (BitVec 64) :=
.seq body578_17 body578_1

def body578_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 5#64)) body578_18 body578_3

def body578_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_mod" []

def body578_21 : Prog (BitVec 64) :=
.seq body578_20 body578_1

def body578_22 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 6#64)) body578_21 body578_3

def body578_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_smod" []

def body578_24 : Prog (BitVec 64) :=
.seq body578_23 body578_1

def body578_25 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 7#64)) body578_24 body578_3

def body578_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_addmod" []

def body578_27 : Prog (BitVec 64) :=
.seq body578_26 body578_1

def body578_28 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 8#64)) body578_27 body578_3

def body578_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_mulmod" []

def body578_30 : Prog (BitVec 64) :=
.seq body578_29 body578_1

def body578_31 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 9#64)) body578_30 body578_3

def body578_32 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_exp" []

def body578_33 : Prog (BitVec 64) :=
.seq body578_32 body578_1

def body578_34 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 10#64)) body578_33 body578_3

def body578_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_signextend" []

def body578_36 : Prog (BitVec 64) :=
.seq body578_35 body578_1

def body578_37 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 11#64)) body578_36 body578_3

def body578_38 : Prog (BitVec 64) :=
.seq body578_34 body578_37

def body578_39 : Prog (BitVec 64) :=
.seq body578_31 body578_38

def body578_40 : Prog (BitVec 64) :=
.seq body578_28 body578_39

def body578_41 : Prog (BitVec 64) :=
.seq body578_25 body578_40

def body578_42 : Prog (BitVec 64) :=
.seq body578_22 body578_41

def body578_43 : Prog (BitVec 64) :=
.seq body578_19 body578_42

def body578_44 : Prog (BitVec 64) :=
.seq body578_16 body578_43

def body578_45 : Prog (BitVec 64) :=
.seq body578_13 body578_44

def body578_46 : Prog (BitVec 64) :=
.seq body578_10 body578_45

def body578_47 : Prog (BitVec 64) :=
.seq body578_7 body578_46

def body578_48 : Prog (BitVec 64) :=
.seq body578_4 body578_47

def body578_49 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_lt" []

def body578_50 : Prog (BitVec 64) :=
.seq body578_49 body578_1

def body578_51 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 16#64)) body578_50 body578_3

def body578_52 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_gt" []

def body578_53 : Prog (BitVec 64) :=
.seq body578_52 body578_1

def body578_54 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 17#64)) body578_53 body578_3

def body578_55 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_slt" []

def body578_56 : Prog (BitVec 64) :=
.seq body578_55 body578_1

def body578_57 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 18#64)) body578_56 body578_3

def body578_58 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_sgt" []

def body578_59 : Prog (BitVec 64) :=
.seq body578_58 body578_1

def body578_60 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 19#64)) body578_59 body578_3

def body578_61 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_eq" []

def body578_62 : Prog (BitVec 64) :=
.seq body578_61 body578_1

def body578_63 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 20#64)) body578_62 body578_3

def body578_64 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_iszero" []

def body578_65 : Prog (BitVec 64) :=
.seq body578_64 body578_1

def body578_66 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 21#64)) body578_65 body578_3

def body578_67 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_and" []

def body578_68 : Prog (BitVec 64) :=
.seq body578_67 body578_1

def body578_69 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 22#64)) body578_68 body578_3

def body578_70 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_or" []

def body578_71 : Prog (BitVec 64) :=
.seq body578_70 body578_1

def body578_72 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 23#64)) body578_71 body578_3

def body578_73 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_xor" []

def body578_74 : Prog (BitVec 64) :=
.seq body578_73 body578_1

def body578_75 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 24#64)) body578_74 body578_3

def body578_76 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_not" []

def body578_77 : Prog (BitVec 64) :=
.seq body578_76 body578_1

def body578_78 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 25#64)) body578_77 body578_3

def body578_79 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_byte" []

def body578_80 : Prog (BitVec 64) :=
.seq body578_79 body578_1

def body578_81 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 26#64)) body578_80 body578_3

def body578_82 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_shl" []

def body578_83 : Prog (BitVec 64) :=
.seq body578_82 body578_1

def body578_84 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 27#64)) body578_83 body578_3

def body578_85 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_shr" []

def body578_86 : Prog (BitVec 64) :=
.seq body578_85 body578_1

def body578_87 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 28#64)) body578_86 body578_3

def body578_88 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_sar" []

def body578_89 : Prog (BitVec 64) :=
.seq body578_88 body578_1

def body578_90 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 29#64)) body578_89 body578_3

def body578_91 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_clz" []

def body578_92 : Prog (BitVec 64) :=
.seq body578_91 body578_1

def body578_93 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 30#64)) body578_92 body578_3

def body578_94 : Prog (BitVec 64) :=
.seq body578_90 body578_93

def body578_95 : Prog (BitVec 64) :=
.seq body578_87 body578_94

def body578_96 : Prog (BitVec 64) :=
.seq body578_84 body578_95

def body578_97 : Prog (BitVec 64) :=
.seq body578_81 body578_96

def body578_98 : Prog (BitVec 64) :=
.seq body578_78 body578_97

def body578_99 : Prog (BitVec 64) :=
.seq body578_75 body578_98

def body578_100 : Prog (BitVec 64) :=
.seq body578_72 body578_99

def body578_101 : Prog (BitVec 64) :=
.seq body578_69 body578_100

def body578_102 : Prog (BitVec 64) :=
.seq body578_66 body578_101

def body578_103 : Prog (BitVec 64) :=
.seq body578_63 body578_102

def body578_104 : Prog (BitVec 64) :=
.seq body578_60 body578_103

def body578_105 : Prog (BitVec 64) :=
.seq body578_57 body578_104

def body578_106 : Prog (BitVec 64) :=
.seq body578_54 body578_105

def body578_107 : Prog (BitVec 64) :=
.seq body578_51 body578_106

def body578_108 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 16#64)) body578_48 body578_107

def body578_109 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 5#64)

def body578_110 : Prog (BitVec 64) :=
.seq body578_108 body578_109

def body578_111 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 32#64)) body578_110 body578_3

def body578_112 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_keccak" []

def body578_113 : Prog (BitVec 64) :=
.seq body578_112 body578_1

def body578_114 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 32#64)) body578_113 body578_3

def body578_115 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_address" []

def body578_116 : Prog (BitVec 64) :=
.seq body578_115 body578_1

def body578_117 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 48#64)) body578_116 body578_3

def body578_118 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_balance" []

def body578_119 : Prog (BitVec 64) :=
.seq body578_118 body578_1

def body578_120 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 49#64)) body578_119 body578_3

def body578_121 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_origin" []

def body578_122 : Prog (BitVec 64) :=
.seq body578_121 body578_1

def body578_123 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 50#64)) body578_122 body578_3

def body578_124 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_caller" []

def body578_125 : Prog (BitVec 64) :=
.seq body578_124 body578_1

def body578_126 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 51#64)) body578_125 body578_3

def body578_127 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_callvalue" []

def body578_128 : Prog (BitVec 64) :=
.seq body578_127 body578_1

def body578_129 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 52#64)) body578_128 body578_3

def body578_130 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_calldataload" []

def body578_131 : Prog (BitVec 64) :=
.seq body578_130 body578_1

def body578_132 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 53#64)) body578_131 body578_3

def body578_133 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_calldatasize" []

def body578_134 : Prog (BitVec 64) :=
.seq body578_133 body578_1

def body578_135 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 54#64)) body578_134 body578_3

def body578_136 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_calldatacopy" []

def body578_137 : Prog (BitVec 64) :=
.seq body578_136 body578_1

def body578_138 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 55#64)) body578_137 body578_3

def body578_139 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_codesize" []

def body578_140 : Prog (BitVec 64) :=
.seq body578_139 body578_1

def body578_141 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 56#64)) body578_140 body578_3

def body578_142 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_codecopy" []

def body578_143 : Prog (BitVec 64) :=
.seq body578_142 body578_1

def body578_144 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 57#64)) body578_143 body578_3

def body578_145 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_gasprice" []

def body578_146 : Prog (BitVec 64) :=
.seq body578_145 body578_1

def body578_147 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 58#64)) body578_146 body578_3

def body578_148 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_extcodesize" []

def body578_149 : Prog (BitVec 64) :=
.seq body578_148 body578_1

def body578_150 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 59#64)) body578_149 body578_3

def body578_151 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_extcodecopy" []

def body578_152 : Prog (BitVec 64) :=
.seq body578_151 body578_1

def body578_153 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 60#64)) body578_152 body578_3

def body578_154 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_returndatasize" []

def body578_155 : Prog (BitVec 64) :=
.seq body578_154 body578_1

def body578_156 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 61#64)) body578_155 body578_3

def body578_157 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_returndatacopy" []

def body578_158 : Prog (BitVec 64) :=
.seq body578_157 body578_1

def body578_159 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 62#64)) body578_158 body578_3

def body578_160 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_extcodehash" []

def body578_161 : Prog (BitVec 64) :=
.seq body578_160 body578_1

def body578_162 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 63#64)) body578_161 body578_3

def body578_163 : Prog (BitVec 64) :=
.seq body578_159 body578_162

def body578_164 : Prog (BitVec 64) :=
.seq body578_156 body578_163

def body578_165 : Prog (BitVec 64) :=
.seq body578_153 body578_164

def body578_166 : Prog (BitVec 64) :=
.seq body578_150 body578_165

def body578_167 : Prog (BitVec 64) :=
.seq body578_147 body578_166

def body578_168 : Prog (BitVec 64) :=
.seq body578_144 body578_167

def body578_169 : Prog (BitVec 64) :=
.seq body578_141 body578_168

def body578_170 : Prog (BitVec 64) :=
.seq body578_138 body578_169

def body578_171 : Prog (BitVec 64) :=
.seq body578_135 body578_170

def body578_172 : Prog (BitVec 64) :=
.seq body578_132 body578_171

def body578_173 : Prog (BitVec 64) :=
.seq body578_129 body578_172

def body578_174 : Prog (BitVec 64) :=
.seq body578_126 body578_173

def body578_175 : Prog (BitVec 64) :=
.seq body578_123 body578_174

def body578_176 : Prog (BitVec 64) :=
.seq body578_120 body578_175

def body578_177 : Prog (BitVec 64) :=
.seq body578_117 body578_176

def body578_178 : Prog (BitVec 64) :=
.seq body578_114 body578_177

def body578_179 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_blockhash" []

def body578_180 : Prog (BitVec 64) :=
.seq body578_179 body578_1

def body578_181 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 64#64)) body578_180 body578_3

def body578_182 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_coinbase" []

def body578_183 : Prog (BitVec 64) :=
.seq body578_182 body578_1

def body578_184 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 65#64)) body578_183 body578_3

def body578_185 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_timestamp" []

def body578_186 : Prog (BitVec 64) :=
.seq body578_185 body578_1

def body578_187 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 66#64)) body578_186 body578_3

def body578_188 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_number" []

def body578_189 : Prog (BitVec 64) :=
.seq body578_188 body578_1

def body578_190 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 67#64)) body578_189 body578_3

def body578_191 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_prevrandao" []

def body578_192 : Prog (BitVec 64) :=
.seq body578_191 body578_1

def body578_193 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 68#64)) body578_192 body578_3

def body578_194 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_gaslimit" []

def body578_195 : Prog (BitVec 64) :=
.seq body578_194 body578_1

def body578_196 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 69#64)) body578_195 body578_3

def body578_197 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_chainid" []

def body578_198 : Prog (BitVec 64) :=
.seq body578_197 body578_1

def body578_199 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 70#64)) body578_198 body578_3

def body578_200 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_selfbalance" []

def body578_201 : Prog (BitVec 64) :=
.seq body578_200 body578_1

def body578_202 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 71#64)) body578_201 body578_3

def body578_203 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_basefee" []

def body578_204 : Prog (BitVec 64) :=
.seq body578_203 body578_1

def body578_205 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 72#64)) body578_204 body578_3

def body578_206 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_blobhash" []

def body578_207 : Prog (BitVec 64) :=
.seq body578_206 body578_1

def body578_208 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 73#64)) body578_207 body578_3

def body578_209 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_blobbasefee" []

def body578_210 : Prog (BitVec 64) :=
.seq body578_209 body578_1

def body578_211 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 74#64)) body578_210 body578_3

def body578_212 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_slotnum" []

def body578_213 : Prog (BitVec 64) :=
.seq body578_212 body578_1

def body578_214 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 75#64)) body578_213 body578_3

def body578_215 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_pop" []

def body578_216 : Prog (BitVec 64) :=
.seq body578_215 body578_1

def body578_217 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 80#64)) body578_216 body578_3

def body578_218 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_mload" []

def body578_219 : Prog (BitVec 64) :=
.seq body578_218 body578_1

def body578_220 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 81#64)) body578_219 body578_3

def body578_221 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_mstore" []

def body578_222 : Prog (BitVec 64) :=
.seq body578_221 body578_1

def body578_223 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 82#64)) body578_222 body578_3

def body578_224 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_mstore8" []

def body578_225 : Prog (BitVec 64) :=
.seq body578_224 body578_1

def body578_226 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 83#64)) body578_225 body578_3

def body578_227 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_sload" []

def body578_228 : Prog (BitVec 64) :=
.seq body578_227 body578_1

def body578_229 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 84#64)) body578_228 body578_3

def body578_230 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_sstore" []

def body578_231 : Prog (BitVec 64) :=
.seq body578_230 body578_1

def body578_232 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 85#64)) body578_231 body578_3

def body578_233 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_jump" []

def body578_234 : Prog (BitVec 64) :=
.seq body578_233 body578_1

def body578_235 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 86#64)) body578_234 body578_3

def body578_236 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_jumpi" []

def body578_237 : Prog (BitVec 64) :=
.seq body578_236 body578_1

def body578_238 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 87#64)) body578_237 body578_3

def body578_239 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_pc" []

def body578_240 : Prog (BitVec 64) :=
.seq body578_239 body578_1

def body578_241 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 88#64)) body578_240 body578_3

def body578_242 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_msize" []

def body578_243 : Prog (BitVec 64) :=
.seq body578_242 body578_1

def body578_244 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 89#64)) body578_243 body578_3

def body578_245 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_gas" []

def body578_246 : Prog (BitVec 64) :=
.seq body578_245 body578_1

def body578_247 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 90#64)) body578_246 body578_3

def body578_248 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_jumpdest" []

def body578_249 : Prog (BitVec 64) :=
.seq body578_248 body578_1

def body578_250 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 91#64)) body578_249 body578_3

def body578_251 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_tload" []

def body578_252 : Prog (BitVec 64) :=
.seq body578_251 body578_1

def body578_253 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 92#64)) body578_252 body578_3

def body578_254 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_tstore" []

def body578_255 : Prog (BitVec 64) :=
.seq body578_254 body578_1

def body578_256 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 93#64)) body578_255 body578_3

def body578_257 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_mcopy" []

def body578_258 : Prog (BitVec 64) :=
.seq body578_257 body578_1

def body578_259 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 94#64)) body578_258 body578_3

def body578_260 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_push" [Flapjack.Exp.const 0#64]

def body578_261 : Prog (BitVec 64) :=
.seq body578_260 body578_1

def body578_262 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 95#64)) body578_261 body578_3

def body578_263 : Prog (BitVec 64) :=
.seq body578_259 body578_262

def body578_264 : Prog (BitVec 64) :=
.seq body578_256 body578_263

def body578_265 : Prog (BitVec 64) :=
.seq body578_253 body578_264

def body578_266 : Prog (BitVec 64) :=
.seq body578_250 body578_265

def body578_267 : Prog (BitVec 64) :=
.seq body578_247 body578_266

def body578_268 : Prog (BitVec 64) :=
.seq body578_244 body578_267

def body578_269 : Prog (BitVec 64) :=
.seq body578_241 body578_268

def body578_270 : Prog (BitVec 64) :=
.seq body578_238 body578_269

def body578_271 : Prog (BitVec 64) :=
.seq body578_235 body578_270

def body578_272 : Prog (BitVec 64) :=
.seq body578_232 body578_271

def body578_273 : Prog (BitVec 64) :=
.seq body578_229 body578_272

def body578_274 : Prog (BitVec 64) :=
.seq body578_226 body578_273

def body578_275 : Prog (BitVec 64) :=
.seq body578_223 body578_274

def body578_276 : Prog (BitVec 64) :=
.seq body578_220 body578_275

def body578_277 : Prog (BitVec 64) :=
.seq body578_217 body578_276

def body578_278 : Prog (BitVec 64) :=
.seq body578_214 body578_277

def body578_279 : Prog (BitVec 64) :=
.seq body578_211 body578_278

def body578_280 : Prog (BitVec 64) :=
.seq body578_208 body578_279

def body578_281 : Prog (BitVec 64) :=
.seq body578_205 body578_280

def body578_282 : Prog (BitVec 64) :=
.seq body578_202 body578_281

def body578_283 : Prog (BitVec 64) :=
.seq body578_199 body578_282

def body578_284 : Prog (BitVec 64) :=
.seq body578_196 body578_283

def body578_285 : Prog (BitVec 64) :=
.seq body578_193 body578_284

def body578_286 : Prog (BitVec 64) :=
.seq body578_190 body578_285

def body578_287 : Prog (BitVec 64) :=
.seq body578_187 body578_286

def body578_288 : Prog (BitVec 64) :=
.seq body578_184 body578_287

def body578_289 : Prog (BitVec 64) :=
.seq body578_181 body578_288

def body578_290 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 64#64)) body578_178 body578_289

def body578_291 : Prog (BitVec 64) :=
.seq body578_290 body578_109

def body578_292 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 96#64)) body578_291 body578_3

def body578_293 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_push"
  [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "op", Flapjack.Exp.const 95#64]]

def body578_294 : Prog (BitVec 64) :=
.seq body578_293 body578_1

def body578_295 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 128#64)) body578_294 body578_3

def body578_296 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_dup"
  [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "op", Flapjack.Exp.const 128#64]]

def body578_297 : Prog (BitVec 64) :=
.seq body578_296 body578_1

def body578_298 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 144#64)) body578_297 body578_3

def body578_299 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_swap"
  [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "op", Flapjack.Exp.const 143#64]]

def body578_300 : Prog (BitVec 64) :=
.seq body578_299 body578_1

def body578_301 : Prog (BitVec 64) :=
.seq body578_298 body578_300

def body578_302 : Prog (BitVec 64) :=
.seq body578_295 body578_301

def body578_303 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 160#64)) body578_302 body578_3

def body578_304 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_log"
  [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "op", Flapjack.Exp.const 160#64]]

def body578_305 : Prog (BitVec 64) :=
.seq body578_304 body578_1

def body578_306 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 165#64)) body578_305 body578_3

def body578_307 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_dupn" []

def body578_308 : Prog (BitVec 64) :=
.seq body578_307 body578_1

def body578_309 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 230#64)) body578_308 body578_3

def body578_310 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_swapn" []

def body578_311 : Prog (BitVec 64) :=
.seq body578_310 body578_1

def body578_312 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 231#64)) body578_311 body578_3

def body578_313 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_exchange" []

def body578_314 : Prog (BitVec 64) :=
.seq body578_313 body578_1

def body578_315 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 232#64)) body578_314 body578_3

def body578_316 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_create" []

def body578_317 : Prog (BitVec 64) :=
.seq body578_316 body578_1

def body578_318 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 240#64)) body578_317 body578_3

def body578_319 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_call" []

def body578_320 : Prog (BitVec 64) :=
.seq body578_319 body578_1

def body578_321 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 241#64)) body578_320 body578_3

def body578_322 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_callcode" []

def body578_323 : Prog (BitVec 64) :=
.seq body578_322 body578_1

def body578_324 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 242#64)) body578_323 body578_3

def body578_325 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_return" []

def body578_326 : Prog (BitVec 64) :=
.seq body578_325 body578_1

def body578_327 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 243#64)) body578_326 body578_3

def body578_328 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_delegatecall" []

def body578_329 : Prog (BitVec 64) :=
.seq body578_328 body578_1

def body578_330 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 244#64)) body578_329 body578_3

def body578_331 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_create2" []

def body578_332 : Prog (BitVec 64) :=
.seq body578_331 body578_1

def body578_333 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 245#64)) body578_332 body578_3

def body578_334 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_staticcall" []

def body578_335 : Prog (BitVec 64) :=
.seq body578_334 body578_1

def body578_336 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 250#64)) body578_335 body578_3

def body578_337 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_revert" []

def body578_338 : Prog (BitVec 64) :=
.seq body578_337 body578_1

def body578_339 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 253#64)) body578_338 body578_3

def body578_340 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "op_selfdestruct" []

def body578_341 : Prog (BitVec 64) :=
.seq body578_340 body578_1

def body578_342 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 255#64)) body578_341 body578_3

def body578_343 : Prog (BitVec 64) :=
.seq body578_109 body578_1

def body578_344 : Prog (BitVec 64) :=
.seq body578_342 body578_343

def body578_345 : Prog (BitVec 64) :=
.seq body578_339 body578_344

def body578_346 : Prog (BitVec 64) :=
.seq body578_336 body578_345

def body578_347 : Prog (BitVec 64) :=
.seq body578_333 body578_346

def body578_348 : Prog (BitVec 64) :=
.seq body578_330 body578_347

def body578_349 : Prog (BitVec 64) :=
.seq body578_327 body578_348

def body578_350 : Prog (BitVec 64) :=
.seq body578_324 body578_349

def body578_351 : Prog (BitVec 64) :=
.seq body578_321 body578_350

def body578_352 : Prog (BitVec 64) :=
.seq body578_318 body578_351

def body578_353 : Prog (BitVec 64) :=
.seq body578_315 body578_352

def body578_354 : Prog (BitVec 64) :=
.seq body578_312 body578_353

def body578_355 : Prog (BitVec 64) :=
.seq body578_309 body578_354

def body578_356 : Prog (BitVec 64) :=
.seq body578_306 body578_355

def body578_357 : Prog (BitVec 64) :=
.seq body578_303 body578_356

def body578_358 : Prog (BitVec 64) :=
.seq body578_292 body578_357

def body578_359 : Prog (BitVec 64) :=
.seq body578_111 body578_358

def body578_360 : Prog (BitVec 64) :=
.seq body578_4 body578_7

def body578_361 : Prog (BitVec 64) :=
.seq body578_360 body578_10

def body578_362 : Prog (BitVec 64) :=
.seq body578_361 body578_13

def body578_363 : Prog (BitVec 64) :=
.seq body578_362 body578_16

def body578_364 : Prog (BitVec 64) :=
.seq body578_363 body578_19

def body578_365 : Prog (BitVec 64) :=
.seq body578_364 body578_22

def body578_366 : Prog (BitVec 64) :=
.seq body578_365 body578_25

def body578_367 : Prog (BitVec 64) :=
.seq body578_366 body578_28

def body578_368 : Prog (BitVec 64) :=
.seq body578_367 body578_31

def body578_369 : Prog (BitVec 64) :=
.seq body578_368 body578_34

def body578_370 : Prog (BitVec 64) :=
.seq body578_369 body578_37

def body578_371 : Prog (BitVec 64) :=
.seq body578_51 body578_54

def body578_372 : Prog (BitVec 64) :=
.seq body578_371 body578_57

def body578_373 : Prog (BitVec 64) :=
.seq body578_372 body578_60

def body578_374 : Prog (BitVec 64) :=
.seq body578_373 body578_63

def body578_375 : Prog (BitVec 64) :=
.seq body578_374 body578_66

def body578_376 : Prog (BitVec 64) :=
.seq body578_375 body578_69

def body578_377 : Prog (BitVec 64) :=
.seq body578_376 body578_72

def body578_378 : Prog (BitVec 64) :=
.seq body578_377 body578_75

def body578_379 : Prog (BitVec 64) :=
.seq body578_378 body578_78

def body578_380 : Prog (BitVec 64) :=
.seq body578_379 body578_81

def body578_381 : Prog (BitVec 64) :=
.seq body578_380 body578_84

def body578_382 : Prog (BitVec 64) :=
.seq body578_381 body578_87

def body578_383 : Prog (BitVec 64) :=
.seq body578_382 body578_90

def body578_384 : Prog (BitVec 64) :=
.seq body578_383 body578_93

def body578_385 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 16#64)) body578_370 body578_384

def body578_386 : Prog (BitVec 64) :=
.seq body578_385 body578_109

def body578_387 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 32#64)) body578_386 body578_3

def body578_388 : Prog (BitVec 64) :=
.seq body578_114 body578_117

def body578_389 : Prog (BitVec 64) :=
.seq body578_388 body578_120

def body578_390 : Prog (BitVec 64) :=
.seq body578_389 body578_123

def body578_391 : Prog (BitVec 64) :=
.seq body578_390 body578_126

def body578_392 : Prog (BitVec 64) :=
.seq body578_391 body578_129

def body578_393 : Prog (BitVec 64) :=
.seq body578_392 body578_132

def body578_394 : Prog (BitVec 64) :=
.seq body578_393 body578_135

def body578_395 : Prog (BitVec 64) :=
.seq body578_394 body578_138

def body578_396 : Prog (BitVec 64) :=
.seq body578_395 body578_141

def body578_397 : Prog (BitVec 64) :=
.seq body578_396 body578_144

def body578_398 : Prog (BitVec 64) :=
.seq body578_397 body578_147

def body578_399 : Prog (BitVec 64) :=
.seq body578_398 body578_150

def body578_400 : Prog (BitVec 64) :=
.seq body578_399 body578_153

def body578_401 : Prog (BitVec 64) :=
.seq body578_400 body578_156

def body578_402 : Prog (BitVec 64) :=
.seq body578_401 body578_159

def body578_403 : Prog (BitVec 64) :=
.seq body578_402 body578_162

def body578_404 : Prog (BitVec 64) :=
.seq body578_181 body578_184

def body578_405 : Prog (BitVec 64) :=
.seq body578_404 body578_187

def body578_406 : Prog (BitVec 64) :=
.seq body578_405 body578_190

def body578_407 : Prog (BitVec 64) :=
.seq body578_406 body578_193

def body578_408 : Prog (BitVec 64) :=
.seq body578_407 body578_196

def body578_409 : Prog (BitVec 64) :=
.seq body578_408 body578_199

def body578_410 : Prog (BitVec 64) :=
.seq body578_409 body578_202

def body578_411 : Prog (BitVec 64) :=
.seq body578_410 body578_205

def body578_412 : Prog (BitVec 64) :=
.seq body578_411 body578_208

def body578_413 : Prog (BitVec 64) :=
.seq body578_412 body578_211

def body578_414 : Prog (BitVec 64) :=
.seq body578_413 body578_214

def body578_415 : Prog (BitVec 64) :=
.seq body578_414 body578_217

def body578_416 : Prog (BitVec 64) :=
.seq body578_415 body578_220

def body578_417 : Prog (BitVec 64) :=
.seq body578_416 body578_223

def body578_418 : Prog (BitVec 64) :=
.seq body578_417 body578_226

def body578_419 : Prog (BitVec 64) :=
.seq body578_418 body578_229

def body578_420 : Prog (BitVec 64) :=
.seq body578_419 body578_232

def body578_421 : Prog (BitVec 64) :=
.seq body578_420 body578_235

def body578_422 : Prog (BitVec 64) :=
.seq body578_421 body578_238

def body578_423 : Prog (BitVec 64) :=
.seq body578_422 body578_241

def body578_424 : Prog (BitVec 64) :=
.seq body578_423 body578_244

def body578_425 : Prog (BitVec 64) :=
.seq body578_424 body578_247

def body578_426 : Prog (BitVec 64) :=
.seq body578_425 body578_250

def body578_427 : Prog (BitVec 64) :=
.seq body578_426 body578_253

def body578_428 : Prog (BitVec 64) :=
.seq body578_427 body578_256

def body578_429 : Prog (BitVec 64) :=
.seq body578_428 body578_259

def body578_430 : Prog (BitVec 64) :=
.seq body578_429 body578_262

def body578_431 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 64#64)) body578_403 body578_430

def body578_432 : Prog (BitVec 64) :=
.seq body578_431 body578_109

def body578_433 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 96#64)) body578_432 body578_3

def body578_434 : Prog (BitVec 64) :=
.seq body578_387 body578_433

def body578_435 : Prog (BitVec 64) :=
.seq body578_295 body578_298

def body578_436 : Prog (BitVec 64) :=
.seq body578_435 body578_299

def body578_437 : Prog (BitVec 64) :=
.seq body578_436 body578_1

def body578_438 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "op") (Flapjack.Exp.const 160#64)) body578_437 body578_3

def body578_439 : Prog (BitVec 64) :=
.seq body578_434 body578_438

def body578_440 : Prog (BitVec 64) :=
.seq body578_439 body578_306

def body578_441 : Prog (BitVec 64) :=
.seq body578_440 body578_309

def body578_442 : Prog (BitVec 64) :=
.seq body578_441 body578_312

def body578_443 : Prog (BitVec 64) :=
.seq body578_442 body578_315

def body578_444 : Prog (BitVec 64) :=
.seq body578_443 body578_318

def body578_445 : Prog (BitVec 64) :=
.seq body578_444 body578_321

def body578_446 : Prog (BitVec 64) :=
.seq body578_445 body578_324

def body578_447 : Prog (BitVec 64) :=
.seq body578_446 body578_327

def body578_448 : Prog (BitVec 64) :=
.seq body578_447 body578_330

def body578_449 : Prog (BitVec 64) :=
.seq body578_448 body578_333

def body578_450 : Prog (BitVec 64) :=
.seq body578_449 body578_336

def body578_451 : Prog (BitVec 64) :=
.seq body578_450 body578_339

def body578_452 : Prog (BitVec 64) :=
.seq body578_451 body578_342

def body578_453 : Prog (BitVec 64) :=
.seq body578_452 body578_109

def body578_454 : Prog (BitVec 64) :=
.seq body578_453 body578_1

def originalData578 : Decl (BitVec 64) :=
.function { name := "op_dispatch", inline := false, exported := false, params := [("op", Flapjack.Shape.one)], body := body578_359, returnShape := (Flapjack.Shape.one) }
def simplifiedData578 : Decl (BitVec 64) :=
.function { name := "op_dispatch", inline := false, exported := false, params := [("op", Flapjack.Shape.one)], body := body578_454, returnShape := (Flapjack.Shape.one) }
def original578 := Pancake.PanLang.declToHOL originalData578
def simplified578 := Pancake.PanLang.declToHOL simplifiedData578
end InitECandidate.Proofs.FrontendStages.Declarations

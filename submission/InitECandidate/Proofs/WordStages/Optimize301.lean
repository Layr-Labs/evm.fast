import InitECandidate.Proofs.WordStages.Optimize285
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source301
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody301_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (6, 6)]

def optimizedBody301_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody301_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody301_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody301_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 6), (44, 0), (50, 2), (48, 4), (54, 8), (46, 10), (52, 6)]

def optimizedBody301_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (48, 48), (50, 4), (0, 2), (52, 52)]

def optimizedBody301_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48), (54, 54), (46, 46), (52, 52)]

def optimizedBody301_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody301_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody301_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_7 optimizedBody301_8

def optimizedBody301_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody301_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody301_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (56, 44), (44, 50), (58, 48), (60, 54), (46, 46), (62, 52)]

def optimizedBody301_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 56), (6, 44), (58, 58), (60, 60), (0, 46), (62, 62)]

def optimizedBody301_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (56, 56), (6, 44), (58, 58), (60, 60), (0, 46), (62, 62)]

def optimizedBody301_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_14 optimizedBody301_8

def optimizedBody301_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody301_13, 301, 3)) (some 286) ([2]) (some (2, optimizedBody301_15, 301, 4))

def optimizedBody301_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(56, 56), (6, 6), (58, 58), (60, 60), (0, 0), (62, 62)]

def optimizedBody301_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_17

def optimizedBody301_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_16 optimizedBody301_18

def optimizedBody301_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_12 optimizedBody301_19

def optimizedBody301_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_11 optimizedBody301_20

def optimizedBody301_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_21

def optimizedBody301_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 1#64) optimizedBody301_9 optimizedBody301_22

def optimizedBody301_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 56), (6, 6), (48, 58), (50, 60), (0, 0), (52, 62)]

def optimizedBody301_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_24

def optimizedBody301_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_23 optimizedBody301_25

def optimizedBody301_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_6 optimizedBody301_26

def optimizedBody301_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody301_5, 301, 2)) (some 162) ([2, 4]) (some (2, optimizedBody301_27, 301, 5))

def optimizedBody301_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody301_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody301_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody301_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody301_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody301_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2, 4]

def optimizedBody301_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_33 optimizedBody301_34

def optimizedBody301_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_32 optimizedBody301_35

def optimizedBody301_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_3 optimizedBody301_36

def optimizedBody301_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_37

def optimizedBody301_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody301_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 0) optimizedBody301_38 optimizedBody301_39

def optimizedBody301_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody301_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 6), (48, 48), (50, 50), (52, 52)]

def optimizedBody301_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (48, 48), (0, 50), (52, 52)]

def optimizedBody301_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (48, 48), (0, 50), (52, 52)]

def optimizedBody301_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_44 optimizedBody301_8

def optimizedBody301_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody301_43, 301, 6)) (some 286) ([2]) (some (2, optimizedBody301_45, 301, 7))

def optimizedBody301_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (48, 48), (0, 0), (52, 52)]

def optimizedBody301_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_47

def optimizedBody301_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_46 optimizedBody301_48

def optimizedBody301_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_42 optimizedBody301_49

def optimizedBody301_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_41 optimizedBody301_50

def optimizedBody301_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_51

def optimizedBody301_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_52

def optimizedBody301_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_40 optimizedBody301_53

def optimizedBody301_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_31 optimizedBody301_54

def optimizedBody301_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_30 optimizedBody301_55

def optimizedBody301_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_56

def optimizedBody301_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (48, 48), (0, 50), (52, 52)]

def optimizedBody301_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_58

def optimizedBody301_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody301_57 optimizedBody301_59

def optimizedBody301_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 6), (44, 44), (48, 48), (52, 52)]

def optimizedBody301_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44), (48, 48), (52, 52)]

def optimizedBody301_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (52, 52)]

def optimizedBody301_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_63 optimizedBody301_8

def optimizedBody301_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody301_62, 301, 8)) (some 169) ([2, 4]) (some (2, optimizedBody301_64, 301, 9))

def optimizedBody301_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 4), (50, 0)]

def optimizedBody301_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2#64)

def optimizedBody301_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 50)]

def optimizedBody301_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody301_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody301_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (46, 44), (56, 48), (58, 0), (60, 52)]

def optimizedBody301_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (6, 6), (46, 46), (56, 56), (58, 58), (60, 60)]

def optimizedBody301_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (56, 56), (58, 58), (60, 60)]

def optimizedBody301_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_73 optimizedBody301_8

def optimizedBody301_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody301_72, 301, 10)) (some 161) ([2, 4]) (some (2, optimizedBody301_74, 301, 11))

def optimizedBody301_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5#64)

def optimizedBody301_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 4), (56, 56), (58, 58), (48, 6), (60, 60)]

def optimizedBody301_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 44), (56, 56), (58, 58), (6, 48), (60, 60)]

def optimizedBody301_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (4, 44), (56, 56), (58, 58), (6, 48), (60, 60)]

def optimizedBody301_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_79 optimizedBody301_8

def optimizedBody301_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody301_78, 301, 12)) (some 286) ([2]) (some (2, optimizedBody301_80, 301, 13))

def optimizedBody301_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (4, 4), (56, 56), (58, 58), (6, 6), (60, 60)]

def optimizedBody301_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_82

def optimizedBody301_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_81 optimizedBody301_83

def optimizedBody301_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_77 optimizedBody301_84

def optimizedBody301_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_76 optimizedBody301_85

def optimizedBody301_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_86

def optimizedBody301_88 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody301_87 optimizedBody301_83

def optimizedBody301_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 6), (46, 46), (56, 56), (58, 58), (60, 60)]

def optimizedBody301_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (6, 6), (8, 4), (46, 46), (56, 56), (58, 58), (60, 60)]

def optimizedBody301_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody301_90, 301, 14)) (some 289) ([2, 4]) (some (2, optimizedBody301_74, 301, 15))

def optimizedBody301_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 58)]

def optimizedBody301_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody301_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody301_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 46), (46, 10), (48, 56), (50, 60), (56, 8)]

def optimizedBody301_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (8, 6), (6, 4), (44, 44), (46, 46), (48, 48), (50, 50), (56, 56)]

def optimizedBody301_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (56, 56)]

def optimizedBody301_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_97 optimizedBody301_8

def optimizedBody301_99 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody301_96, 301, 16)) (some 161) ([2, 4]) (some (2, optimizedBody301_98, 301, 17))

def optimizedBody301_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody301_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 8), (54, 6), (56, 56)]

def optimizedBody301_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (50, 50), (8, 52), (6, 54), (4, 56)]

def optimizedBody301_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (8, 52), (6, 54), (4, 56)]

def optimizedBody301_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_103 optimizedBody301_8

def optimizedBody301_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody301_102, 301, 18)) (some 286) ([2]) (some (2, optimizedBody301_104, 301, 19))

def optimizedBody301_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (48, 48), (50, 50), (8, 8), (6, 6), (4, 4)]

def optimizedBody301_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_106

def optimizedBody301_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_105 optimizedBody301_107

def optimizedBody301_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_101 optimizedBody301_108

def optimizedBody301_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_100 optimizedBody301_109

def optimizedBody301_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_110

def optimizedBody301_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 46), (48, 48), (50, 50), (8, 8), (6, 6), (4, 56)]

def optimizedBody301_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_112

def optimizedBody301_114 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody301_111 optimizedBody301_113

def optimizedBody301_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (48, 48), (50, 50)]

def optimizedBody301_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (10, 44), (6, 48), (0, 50)]

def optimizedBody301_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (6, 48), (0, 50)]

def optimizedBody301_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_117 optimizedBody301_8

def optimizedBody301_119 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody301_116, 301, 20)) (some 296) ([2, 4, 6, 8]) (some (2, optimizedBody301_118, 301, 21))

def optimizedBody301_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody301_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody301_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody301_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody301_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody301_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody301_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody301_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2, 4]

def optimizedBody301_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_33 optimizedBody301_127

def optimizedBody301_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_3 optimizedBody301_128

def optimizedBody301_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_126 optimizedBody301_129

def optimizedBody301_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_125 optimizedBody301_130

def optimizedBody301_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_124 optimizedBody301_131

def optimizedBody301_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_120 optimizedBody301_132

def optimizedBody301_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_123 optimizedBody301_133

def optimizedBody301_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_122 optimizedBody301_134

def optimizedBody301_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_121 optimizedBody301_135

def optimizedBody301_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_120 optimizedBody301_136

def optimizedBody301_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_137

def optimizedBody301_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_119 optimizedBody301_138

def optimizedBody301_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_115 optimizedBody301_139

def optimizedBody301_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_140

def optimizedBody301_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_114 optimizedBody301_141

def optimizedBody301_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_3 optimizedBody301_142

def optimizedBody301_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_29 optimizedBody301_143

def optimizedBody301_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_144

def optimizedBody301_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_99 optimizedBody301_145

def optimizedBody301_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_95 optimizedBody301_146

def optimizedBody301_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_94 optimizedBody301_147

def optimizedBody301_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_29 optimizedBody301_148

def optimizedBody301_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_93 optimizedBody301_149

def optimizedBody301_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_92 optimizedBody301_150

def optimizedBody301_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_151

def optimizedBody301_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(54, 10), (58, 58), (8, 8), (46, 46), (56, 56), (60, 60)]

def optimizedBody301_154 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 0) optimizedBody301_152 optimizedBody301_153

def optimizedBody301_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody301_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 7#64)

def optimizedBody301_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (54, 54), (56, 56), (58, 58), (60, 60), (62, 8)]

def optimizedBody301_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody301_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody301_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_159 optimizedBody301_8

def optimizedBody301_161 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody301_158, 301, 22)) (some 286) ([2]) (some (2, optimizedBody301_160, 301, 23))

def optimizedBody301_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody301_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_162

def optimizedBody301_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_161 optimizedBody301_163

def optimizedBody301_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_157 optimizedBody301_164

def optimizedBody301_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_156 optimizedBody301_165

def optimizedBody301_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_166

def optimizedBody301_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (54, 54), (56, 56), (58, 58), (60, 60), (62, 8)]

def optimizedBody301_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_168

def optimizedBody301_170 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 0) optimizedBody301_167 optimizedBody301_169

def optimizedBody301_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 88#64)

def optimizedBody301_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (16, 46), (0, 54), (8, 56), (10, 58), (14, 60), (6, 62)]

def optimizedBody301_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 46), (0, 54), (8, 56), (10, 58), (14, 60), (6, 62)]

def optimizedBody301_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_173 optimizedBody301_8

def optimizedBody301_175 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody301_172, 301, 24)) (some 74) ([2]) (some (2, optimizedBody301_174, 301, 25))

def optimizedBody301_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 1#64)

def optimizedBody301_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody301_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody301_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody301_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody301_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody301_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody301_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody301_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody301_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody301_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14)]

def optimizedBody301_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody301_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody301_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody301_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody301_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody301_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody301_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2, 4]

def optimizedBody301_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_33 optimizedBody301_193

def optimizedBody301_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_192 optimizedBody301_194

def optimizedBody301_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_191 optimizedBody301_195

def optimizedBody301_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_190 optimizedBody301_196

def optimizedBody301_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_189 optimizedBody301_197

def optimizedBody301_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_120 optimizedBody301_198

def optimizedBody301_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_126 optimizedBody301_199

def optimizedBody301_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_125 optimizedBody301_200

def optimizedBody301_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_188 optimizedBody301_201

def optimizedBody301_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_120 optimizedBody301_202

def optimizedBody301_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_187 optimizedBody301_203

def optimizedBody301_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_186 optimizedBody301_204

def optimizedBody301_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_185 optimizedBody301_205

def optimizedBody301_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_120 optimizedBody301_206

def optimizedBody301_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_184 optimizedBody301_207

def optimizedBody301_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_183 optimizedBody301_208

def optimizedBody301_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_182 optimizedBody301_209

def optimizedBody301_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_120 optimizedBody301_210

def optimizedBody301_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_181 optimizedBody301_211

def optimizedBody301_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_180 optimizedBody301_212

def optimizedBody301_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_179 optimizedBody301_213

def optimizedBody301_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_120 optimizedBody301_214

def optimizedBody301_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_178 optimizedBody301_215

def optimizedBody301_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_177 optimizedBody301_216

def optimizedBody301_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_176 optimizedBody301_217

def optimizedBody301_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_121 optimizedBody301_218

def optimizedBody301_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_120 optimizedBody301_219

def optimizedBody301_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_220

def optimizedBody301_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_175 optimizedBody301_221

def optimizedBody301_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_159 optimizedBody301_222

def optimizedBody301_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_171 optimizedBody301_223

def optimizedBody301_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_224

def optimizedBody301_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_170 optimizedBody301_225

def optimizedBody301_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_31 optimizedBody301_226

def optimizedBody301_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_155 optimizedBody301_227

def optimizedBody301_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_228

def optimizedBody301_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_229

def optimizedBody301_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_154 optimizedBody301_230

def optimizedBody301_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_31 optimizedBody301_231

def optimizedBody301_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_30 optimizedBody301_232

def optimizedBody301_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_233

def optimizedBody301_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_91 optimizedBody301_234

def optimizedBody301_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_89 optimizedBody301_235

def optimizedBody301_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_236

def optimizedBody301_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_88 optimizedBody301_237

def optimizedBody301_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_3 optimizedBody301_238

def optimizedBody301_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_29 optimizedBody301_239

def optimizedBody301_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_240

def optimizedBody301_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_75 optimizedBody301_241

def optimizedBody301_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_71 optimizedBody301_242

def optimizedBody301_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_70 optimizedBody301_243

def optimizedBody301_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_29 optimizedBody301_244

def optimizedBody301_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_69 optimizedBody301_245

def optimizedBody301_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_68 optimizedBody301_246

def optimizedBody301_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_247

def optimizedBody301_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(12, 12), (44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody301_250 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 0) optimizedBody301_248 optimizedBody301_249

def optimizedBody301_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody301_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 17#64)

def optimizedBody301_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody301_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody301_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_253 optimizedBody301_8

def optimizedBody301_256 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody301_254, 301, 26)) (some 286) ([2]) (some (2, optimizedBody301_255, 301, 27))

def optimizedBody301_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody301_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_257

def optimizedBody301_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_256 optimizedBody301_258

def optimizedBody301_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_253 optimizedBody301_259

def optimizedBody301_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_41 optimizedBody301_260

def optimizedBody301_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_261

def optimizedBody301_263 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 0) optimizedBody301_262 optimizedBody301_258

def optimizedBody301_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody301_265 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody301_264, 301, 28)) (some 298) ([]) (some (2, optimizedBody301_255, 301, 29))

def optimizedBody301_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52)]

def optimizedBody301_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (12, 44), (10, 46), (0, 48), (8, 50), (6, 52)]

def optimizedBody301_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (10, 46), (0, 48), (8, 50), (6, 52)]

def optimizedBody301_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_268 optimizedBody301_8

def optimizedBody301_270 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody301_267, 301, 30)) (some 74) ([2]) (some (2, optimizedBody301_269, 301, 31))

def optimizedBody301_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 2#64)

def optimizedBody301_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody301_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody301_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody301_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2, 4]

def optimizedBody301_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_33 optimizedBody301_275

def optimizedBody301_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_192 optimizedBody301_276

def optimizedBody301_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_191 optimizedBody301_277

def optimizedBody301_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_190 optimizedBody301_278

def optimizedBody301_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_274 optimizedBody301_279

def optimizedBody301_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_120 optimizedBody301_280

def optimizedBody301_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_126 optimizedBody301_281

def optimizedBody301_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_125 optimizedBody301_282

def optimizedBody301_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_182 optimizedBody301_283

def optimizedBody301_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_120 optimizedBody301_284

def optimizedBody301_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_184 optimizedBody301_285

def optimizedBody301_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_177 optimizedBody301_286

def optimizedBody301_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_2 optimizedBody301_287

def optimizedBody301_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_273 optimizedBody301_288

def optimizedBody301_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_120 optimizedBody301_289

def optimizedBody301_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_184 optimizedBody301_290

def optimizedBody301_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_177 optimizedBody301_291

def optimizedBody301_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_2 optimizedBody301_292

def optimizedBody301_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_272 optimizedBody301_293

def optimizedBody301_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_120 optimizedBody301_294

def optimizedBody301_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_184 optimizedBody301_295

def optimizedBody301_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_183 optimizedBody301_296

def optimizedBody301_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_179 optimizedBody301_297

def optimizedBody301_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_120 optimizedBody301_298

def optimizedBody301_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_181 optimizedBody301_299

def optimizedBody301_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_180 optimizedBody301_300

def optimizedBody301_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_124 optimizedBody301_301

def optimizedBody301_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_120 optimizedBody301_302

def optimizedBody301_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_187 optimizedBody301_303

def optimizedBody301_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_177 optimizedBody301_304

def optimizedBody301_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_271 optimizedBody301_305

def optimizedBody301_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_121 optimizedBody301_306

def optimizedBody301_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_120 optimizedBody301_307

def optimizedBody301_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_308

def optimizedBody301_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_270 optimizedBody301_309

def optimizedBody301_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_266 optimizedBody301_310

def optimizedBody301_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_171 optimizedBody301_311

def optimizedBody301_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_312

def optimizedBody301_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_265 optimizedBody301_313

def optimizedBody301_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_254 optimizedBody301_314

def optimizedBody301_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_315

def optimizedBody301_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_263 optimizedBody301_316

def optimizedBody301_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_252 optimizedBody301_317

def optimizedBody301_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_251 optimizedBody301_318

def optimizedBody301_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_319

def optimizedBody301_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_320

def optimizedBody301_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_250 optimizedBody301_321

def optimizedBody301_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_67 optimizedBody301_322

def optimizedBody301_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_66 optimizedBody301_323

def optimizedBody301_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_324

def optimizedBody301_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_65 optimizedBody301_325

def optimizedBody301_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_61 optimizedBody301_326

def optimizedBody301_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_327

def optimizedBody301_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_60 optimizedBody301_328

def optimizedBody301_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_3 optimizedBody301_329

def optimizedBody301_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_29 optimizedBody301_330

def optimizedBody301_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_10 optimizedBody301_331

def optimizedBody301_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_28 optimizedBody301_332

def optimizedBody301_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_4 optimizedBody301_333

def optimizedBody301_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_3 optimizedBody301_334

def optimizedBody301_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_2 optimizedBody301_335

def optimizedBody301_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_1 optimizedBody301_336

def optimizedBody301_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody301_0 optimizedBody301_337

def oracle301 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  3
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
                25
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 Flapjack.Spt.ln) 26
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 5)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 24)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 3
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  31
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 4 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 3
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                  29
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))))
                4
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln) 26
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 29 (Flapjack.Spt.ls 28)) 26
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 30
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 3 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 (Flapjack.Spt.ls 2)))
                  0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 29)) 3
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)) 25 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) (Flapjack.Spt.ls 29)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                  1
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 28 Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  28
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))))
                3
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))))
                  27
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 28
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  29 (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 31))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))))
              0
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 2)))
                  31
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 30)) 24
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.ls 24))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 30 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 6 Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 29)) 24
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                  3
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)))))
                5
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))))
                  23
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 1))) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 23 Flapjack.Spt.ln))
                  30 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 0)) 1 Flapjack.Spt.ln))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 28)) 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 28 (Flapjack.Spt.ls 23)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 Flapjack.Spt.ln) (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25 (Flapjack.Spt.ls 30))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) 3
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 5)))))
                2
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1))))
                  24
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) 22 Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.ls 23))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                27
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 25 Flapjack.Spt.ln) Flapjack.Spt.ln) 28
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 26)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) 22 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln))
                26
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  29 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 25
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 24 Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) 24 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 25)))
                  30 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 22))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                24
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                23
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 28 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  22
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 22
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 31
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) 23 Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))))
def optimized301 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(301, 4, optimizedBody301_338)
theorem optimize301_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source301, oracle301) = optimized301 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize301_eq
end InitECandidate.Proofs.WordStages

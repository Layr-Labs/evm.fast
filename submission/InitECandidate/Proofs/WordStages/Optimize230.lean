import InitECandidate.Proofs.WordStages.Optimize214
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source230
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody230_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 10), (8, 8), (6, 6), (4, 4), (12, 2), (0, 0), (18, 12)]

def optimizedBody230_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 20 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody230_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody230_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def optimizedBody230_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody230_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 12)]

def optimizedBody230_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 18446744073709551615#64)

def optimizedBody230_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 18446744073709551614#64)

def optimizedBody230_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 13451932020343611451#64)

def optimizedBody230_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 13822214165235122497#64)

def optimizedBody230_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 0), (54, 18), (62, 20)]

def optimizedBody230_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (10, 10), (8, 8), (4, 4), (6, 6), (0, 44), (54, 54), (62, 62)]

def optimizedBody230_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (54, 54), (62, 62)]

def optimizedBody230_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody230_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_12 optimizedBody230_13

def optimizedBody230_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody230_11, 230, 2)) (some 115) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody230_14, 230, 3))

def optimizedBody230_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody230_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody230_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody230_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody230_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody230_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_19 optimizedBody230_20

def optimizedBody230_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_18 optimizedBody230_21

def optimizedBody230_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_22

def optimizedBody230_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody230_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 2) optimizedBody230_23 optimizedBody230_24

def optimizedBody230_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (54, 54), (8, 8), (4, 4), (6, 6), (62, 62), (12, 12)]

def optimizedBody230_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_26

def optimizedBody230_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_27

def optimizedBody230_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_25 optimizedBody230_28

def optimizedBody230_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_17 optimizedBody230_29

def optimizedBody230_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_16 optimizedBody230_30

def optimizedBody230_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_31

def optimizedBody230_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_15 optimizedBody230_32

def optimizedBody230_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_10 optimizedBody230_33

def optimizedBody230_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_9 optimizedBody230_34

def optimizedBody230_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_8 optimizedBody230_35

def optimizedBody230_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_7 optimizedBody230_36

def optimizedBody230_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_6 optimizedBody230_37

def optimizedBody230_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_5 optimizedBody230_38

def optimizedBody230_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_39

def optimizedBody230_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (54, 18), (8, 8), (4, 4), (6, 6), (62, 20), (12, 12)]

def optimizedBody230_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_41

def optimizedBody230_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 10) optimizedBody230_40 optimizedBody230_42

def optimizedBody230_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 18446744073709551615#64)

def optimizedBody230_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 18446744073709551615#64)

def optimizedBody230_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 18446744069414583343#64)

def optimizedBody230_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (54, 54), (46, 8), (48, 4),
    (50, 6), (62, 62), (52, 2)]

def optimizedBody230_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (12, 44), (54, 54), (8, 46), (4, 48), (6, 50), (62, 62), (10, 52)]

def optimizedBody230_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (54, 54), (8, 46), (4, 48), (6, 50), (62, 62), (10, 52)]

def optimizedBody230_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_49 optimizedBody230_13

def optimizedBody230_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody230_48, 230, 4)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody230_50, 230, 5))

def optimizedBody230_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody230_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody230_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_19 optimizedBody230_53

def optimizedBody230_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_18 optimizedBody230_54

def optimizedBody230_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_55

def optimizedBody230_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody230_56 optimizedBody230_24

def optimizedBody230_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 4), (6, 6), (8, 8), (44, 12), (54, 54), (46, 8), (48, 4), (50, 6), (62, 62), (52, 10)]

def optimizedBody230_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (0, 2), (4, 4), (44, 44), (54, 54), (16, 46), (12, 48), (14, 50), (62, 62), (10, 52)]

def optimizedBody230_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (54, 54), (16, 46), (12, 48), (14, 50), (62, 62), (10, 52)]

def optimizedBody230_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_60 optimizedBody230_13

def optimizedBody230_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody230_59, 230, 6)) (some 207) ([2, 4, 6, 8]) (some (2, optimizedBody230_61, 230, 7))

def optimizedBody230_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (54, 54), (56, 16), (58, 12),
    (60, 14), (62, 62), (72, 10)]

def optimizedBody230_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (0, 2), (4, 4), (44, 44), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (72, 72)]

def optimizedBody230_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (72, 72)]

def optimizedBody230_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_65 optimizedBody230_13

def optimizedBody230_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody230_64, 230, 8)) (some 206) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody230_66, 230, 9))

def optimizedBody230_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 0)]

def optimizedBody230_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody230_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody230_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody230_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 7#64)

def optimizedBody230_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (72, 72)]

def optimizedBody230_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody230_64, 230, 10)) (some 202) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody230_66, 230, 11))

def optimizedBody230_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 8), (66, 6),
    (68, 0), (70, 4), (72, 72)]

def optimizedBody230_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (0, 2), (4, 4), (44, 44), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (72, 72)]

def optimizedBody230_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72)]

def optimizedBody230_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_77 optimizedBody230_13

def optimizedBody230_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody230_76, 230, 12)) (some 214) ([2, 4, 6, 8]) (some (2, optimizedBody230_78, 230, 13))

def optimizedBody230_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 8), (48, 6), (50, 0), (52, 4), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 64), (66, 66), (68, 68), (70, 70), (72, 72)]

def optimizedBody230_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (0, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (16, 64), (14, 66), (10, 68), (12, 70), (64, 72)]

def optimizedBody230_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (16, 64),
    (14, 66), (10, 68), (12, 70), (64, 72)]

def optimizedBody230_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_82 optimizedBody230_13

def optimizedBody230_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody230_81, 230, 14)) (some 207) ([2, 4, 6, 8]) (some (2, optimizedBody230_83, 230, 15))

def optimizedBody230_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64)]

def optimizedBody230_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (6, 44), (18, 46), (16, 48), (12, 50), (14, 52), (46, 54), (48, 56), (50, 58), (52, 60), (0, 62), (54, 64)]

def optimizedBody230_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (6, 44), (18, 46), (16, 48), (12, 50), (14, 52), (46, 54), (48, 56), (50, 58), (52, 60), (0, 62), (54, 64)]

def optimizedBody230_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_87 optimizedBody230_13

def optimizedBody230_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody230_86, 230, 16)) (some 105) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody230_88, 230, 17))

def optimizedBody230_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody230_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody230_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_19 optimizedBody230_91

def optimizedBody230_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_18 optimizedBody230_92

def optimizedBody230_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_93

def optimizedBody230_95 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody230_94 optimizedBody230_24

def optimizedBody230_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (18, 18), (16, 16), (14, 14)]

def optimizedBody230_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody230_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody230_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 12), (4, 14), (6, 16), (8, 18), (44, 6), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody230_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 6), (14, 4), (12, 2), (18, 8), (44, 44), (0, 46), (10, 48), (6, 50), (8, 52), (4, 54)]

def optimizedBody230_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (10, 48), (6, 50), (8, 52), (4, 54)]

def optimizedBody230_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_101 optimizedBody230_13

def optimizedBody230_103 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody230_100, 230, 18)) (some 204) ([2, 4, 6, 8]) (some (2, optimizedBody230_102, 230, 19))

def optimizedBody230_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (16, 16), (14, 14), (12, 12), (0, 0), (18, 18), (10, 10), (6, 6), (8, 8), (4, 4)]

def optimizedBody230_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_104

def optimizedBody230_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_103 optimizedBody230_105

def optimizedBody230_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_99 optimizedBody230_106

def optimizedBody230_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_107

def optimizedBody230_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 6), (16, 16), (14, 14), (12, 12), (0, 46), (18, 18), (10, 48), (6, 50), (8, 52), (4, 54)]

def optimizedBody230_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_109

def optimizedBody230_111 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 0) optimizedBody230_108 optimizedBody230_110

def optimizedBody230_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (44, 44)]

def optimizedBody230_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody230_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody230_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_114 optimizedBody230_13

def optimizedBody230_116 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody230_113, 230, 20)) (some 221) ([2, 4, 6, 8, 10, 12, 14, 16, 18]) (some (2, optimizedBody230_115, 230, 21))

def optimizedBody230_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_17 optimizedBody230_21

def optimizedBody230_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_117

def optimizedBody230_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_116 optimizedBody230_118

def optimizedBody230_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_112 optimizedBody230_119

def optimizedBody230_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_120

def optimizedBody230_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_111 optimizedBody230_121

def optimizedBody230_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_98 optimizedBody230_122

def optimizedBody230_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_52 optimizedBody230_123

def optimizedBody230_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_97 optimizedBody230_124

def optimizedBody230_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_96 optimizedBody230_125

def optimizedBody230_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_126

def optimizedBody230_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_127

def optimizedBody230_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_95 optimizedBody230_128

def optimizedBody230_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_18 optimizedBody230_129

def optimizedBody230_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_90 optimizedBody230_130

def optimizedBody230_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_131

def optimizedBody230_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_89 optimizedBody230_132

def optimizedBody230_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_85 optimizedBody230_133

def optimizedBody230_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_134

def optimizedBody230_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_84 optimizedBody230_135

def optimizedBody230_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_80 optimizedBody230_136

def optimizedBody230_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_137

def optimizedBody230_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_79 optimizedBody230_138

def optimizedBody230_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_75 optimizedBody230_139

def optimizedBody230_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_140

def optimizedBody230_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_74 optimizedBody230_141

def optimizedBody230_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_73 optimizedBody230_142

def optimizedBody230_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_72 optimizedBody230_143

def optimizedBody230_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_71 optimizedBody230_144

def optimizedBody230_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_70 optimizedBody230_145

def optimizedBody230_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_69 optimizedBody230_146

def optimizedBody230_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_68 optimizedBody230_147

def optimizedBody230_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_148

def optimizedBody230_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_67 optimizedBody230_149

def optimizedBody230_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_63 optimizedBody230_150

def optimizedBody230_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_151

def optimizedBody230_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_62 optimizedBody230_152

def optimizedBody230_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_58 optimizedBody230_153

def optimizedBody230_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_154

def optimizedBody230_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_155

def optimizedBody230_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_57 optimizedBody230_156

def optimizedBody230_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_18 optimizedBody230_157

def optimizedBody230_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_52 optimizedBody230_158

def optimizedBody230_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_159

def optimizedBody230_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_51 optimizedBody230_160

def optimizedBody230_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_47 optimizedBody230_161

def optimizedBody230_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_46 optimizedBody230_162

def optimizedBody230_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_45 optimizedBody230_163

def optimizedBody230_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_44 optimizedBody230_164

def optimizedBody230_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_6 optimizedBody230_165

def optimizedBody230_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_5 optimizedBody230_166

def optimizedBody230_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_4 optimizedBody230_167

def optimizedBody230_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_43 optimizedBody230_168

def optimizedBody230_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_3 optimizedBody230_169

def optimizedBody230_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_2 optimizedBody230_170

def optimizedBody230_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_1 optimizedBody230_171

def optimizedBody230_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody230_0 optimizedBody230_172

def oracle230 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9))) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 6)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 3)) 4
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
                10
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 32)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 31 Flapjack.Spt.ln))
                  3 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 5)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                  31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 0))))
                6
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 28)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 6
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 27 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 (Flapjack.Spt.ls 4))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                3
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 2)) 1 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.ls 30)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 8 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 6 Flapjack.Spt.ln))
                  1 (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 5 (Flapjack.Spt.ls 3)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 9) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 3)) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 8
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 34))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
                  1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 Flapjack.Spt.ln))
                4
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 36 (Flapjack.Spt.ls 2)) 2 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 31)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 7 Flapjack.Spt.ln))
                  2 (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 6 (Flapjack.Spt.ls 31)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                  27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 2))))
                9
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  7 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 35))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 22 Flapjack.Spt.ln))
                  5 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 27))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 31 (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 3))))
                2
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 29)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))) 5
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 8 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 27 Flapjack.Spt.ln) 4 (Flapjack.Spt.ls 2)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.ls 6))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 5 Flapjack.Spt.ln))
                  4 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 0)) 5 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 33))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) 27
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln))
                  1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 31 (Flapjack.Spt.ls 29))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 27
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 35))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 27))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 36)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 25 (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 28 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 22
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 36) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 31
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 36)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 28)))))))))))
def optimized230 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(230, 7, optimizedBody230_173)
theorem optimize230_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source230, oracle230) = optimized230 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize230_eq
end InitECandidate.Proofs.WordStages

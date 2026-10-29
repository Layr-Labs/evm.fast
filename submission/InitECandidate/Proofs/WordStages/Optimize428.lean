import InitECandidate.Proofs.WordStages.Optimize412
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source428
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody428_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 8), (48, 4), (50, 2), (52, 10), (54, 6)]

def optimizedBody428_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody428_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody428_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody428_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_2 optimizedBody428_3

def optimizedBody428_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody428_1, 428, 2)) (some 407) ([2]) (some (2, optimizedBody428_4, 428, 3))

def optimizedBody428_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody428_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody428_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (14, 46), (10, 48), (46, 50), (16, 52), (12, 54)]

def optimizedBody428_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46), (10, 48), (46, 50), (16, 52), (12, 54)]

def optimizedBody428_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_9 optimizedBody428_3

def optimizedBody428_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody428_8, 428, 4)) (some 395) ([2]) (some (2, optimizedBody428_10, 428, 5))

def optimizedBody428_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody428_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody428_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody428_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody428_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody428_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 0)]

def optimizedBody428_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (12, 2), (10, 4), (44, 44), (14, 46), (4, 48)]

def optimizedBody428_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46), (4, 48)]

def optimizedBody428_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_19 optimizedBody428_3

def optimizedBody428_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody428_18, 428, 6)) (some 116) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody428_20, 428, 7))

def optimizedBody428_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody428_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody428_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 12), (8, 8), (6, 6), (10, 10)]

def optimizedBody428_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody428_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10)]

def optimizedBody428_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody428_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody428_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody428_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody428_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody428_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 14), (4, 4), (44, 44)]

def optimizedBody428_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody428_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody428_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_34 optimizedBody428_3

def optimizedBody428_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody428_33, 428, 8)) (some 423) ([2, 4]) (some (2, optimizedBody428_35, 428, 9))

def optimizedBody428_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody428_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody428_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody428_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_38 optimizedBody428_39

def optimizedBody428_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_37 optimizedBody428_40

def optimizedBody428_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_6 optimizedBody428_41

def optimizedBody428_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_36 optimizedBody428_42

def optimizedBody428_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_32 optimizedBody428_43

def optimizedBody428_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_31 optimizedBody428_44

def optimizedBody428_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_30 optimizedBody428_45

def optimizedBody428_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_29 optimizedBody428_46

def optimizedBody428_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_28 optimizedBody428_47

def optimizedBody428_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_27 optimizedBody428_48

def optimizedBody428_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_26 optimizedBody428_49

def optimizedBody428_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_25 optimizedBody428_50

def optimizedBody428_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_24 optimizedBody428_51

def optimizedBody428_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_23 optimizedBody428_52

def optimizedBody428_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_22 optimizedBody428_53

def optimizedBody428_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_6 optimizedBody428_54

def optimizedBody428_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_21 optimizedBody428_55

def optimizedBody428_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_17 optimizedBody428_56

def optimizedBody428_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_16 optimizedBody428_57

def optimizedBody428_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_12 optimizedBody428_58

def optimizedBody428_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_15 optimizedBody428_59

def optimizedBody428_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_12 optimizedBody428_60

def optimizedBody428_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_14 optimizedBody428_61

def optimizedBody428_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_12 optimizedBody428_62

def optimizedBody428_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_13 optimizedBody428_63

def optimizedBody428_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_12 optimizedBody428_64

def optimizedBody428_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_6 optimizedBody428_65

def optimizedBody428_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_11 optimizedBody428_66

def optimizedBody428_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_7 optimizedBody428_67

def optimizedBody428_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_6 optimizedBody428_68

def optimizedBody428_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_5 optimizedBody428_69

def optimizedBody428_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody428_0 optimizedBody428_70

def oracle428 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)) 25 (Flapjack.Spt.ls 7))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 27
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 6)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 23 Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 24 (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 26
                (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 5)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 22
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 25)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 24)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 23)))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))))))
def optimized428 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(428, 6, optimizedBody428_71)
theorem optimize428_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source428, oracle428) = optimized428 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize428_eq
end InitECandidate.Proofs.WordStages

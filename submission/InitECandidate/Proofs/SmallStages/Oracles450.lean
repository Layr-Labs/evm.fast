import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source450
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles450
def optimizedBody450_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2), (6, 4)]

def optimizedBody450_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody450_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody450_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody450_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551440#64))

def optimizedBody450_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody450_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 6), (48, 4)]

def optimizedBody450_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (12, 44), (46, 46), (10, 48)]

def optimizedBody450_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (46, 46), (10, 48)]

def optimizedBody450_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody450_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_8 optimizedBody450_9

def optimizedBody450_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody450_7, 450, 2)) (some 411) ([2, 4, 6]) (some (2, optimizedBody450_10, 450, 3))

def optimizedBody450_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody450_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody450_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody450_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody450_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody450_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody450_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody450_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody450_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 0), (6, 6), (8, 8)]

def optimizedBody450_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2, 4, 6, 8]

def optimizedBody450_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_20 optimizedBody450_21

def optimizedBody450_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_19 optimizedBody450_22

def optimizedBody450_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_15 optimizedBody450_23

def optimizedBody450_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_18 optimizedBody450_24

def optimizedBody450_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_15 optimizedBody450_25

def optimizedBody450_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_17 optimizedBody450_26

def optimizedBody450_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_15 optimizedBody450_27

def optimizedBody450_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_16 optimizedBody450_28

def optimizedBody450_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_15 optimizedBody450_29

def optimizedBody450_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_12 optimizedBody450_30

def optimizedBody450_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody450_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody450_31 optimizedBody450_32

def optimizedBody450_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (44, 12), (46, 46), (48, 10)]

def optimizedBody450_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody450_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody450_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_36 optimizedBody450_9

def optimizedBody450_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody450_35, 450, 4)) (some 398) ([2]) (some (2, optimizedBody450_37, 450, 5))

def optimizedBody450_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44)]

def optimizedBody450_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (10, 2), (8, 8), (4, 4), (0, 44)]

def optimizedBody450_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody450_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_41 optimizedBody450_9

def optimizedBody450_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody450_40, 450, 6)) (some 403) ([2, 4]) (some (2, optimizedBody450_42, 450, 7))

def optimizedBody450_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody450_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody450_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_44 optimizedBody450_45

def optimizedBody450_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_12 optimizedBody450_46

def optimizedBody450_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_43 optimizedBody450_47

def optimizedBody450_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_39 optimizedBody450_48

def optimizedBody450_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_12 optimizedBody450_49

def optimizedBody450_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_38 optimizedBody450_50

def optimizedBody450_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_34 optimizedBody450_51

def optimizedBody450_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_12 optimizedBody450_52

def optimizedBody450_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_12 optimizedBody450_53

def optimizedBody450_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_33 optimizedBody450_54

def optimizedBody450_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_14 optimizedBody450_55

def optimizedBody450_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_13 optimizedBody450_56

def optimizedBody450_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_12 optimizedBody450_57

def optimizedBody450_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_11 optimizedBody450_58

def optimizedBody450_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_6 optimizedBody450_59

def optimizedBody450_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_5 optimizedBody450_60

def optimizedBody450_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_4 optimizedBody450_61

def optimizedBody450_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_3 optimizedBody450_62

def optimizedBody450_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_2 optimizedBody450_63

def optimizedBody450_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_1 optimizedBody450_64

def optimizedBody450_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody450_0 optimizedBody450_65

def oracle450 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 5 (Flapjack.Spt.ls 3))) 0
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4))) 3
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))) 2
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 Flapjack.Spt.ln))
            Flapjack.Spt.ln)))))
def optimized450 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(450, 3, optimizedBody450_66)
end InitECandidate.Proofs.SmallStages.Oracles450

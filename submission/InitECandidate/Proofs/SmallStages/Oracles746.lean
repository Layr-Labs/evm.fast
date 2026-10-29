import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source746
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles746
def optimizedBody746_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (44, 4), (48, 2), (50, 6)]

def optimizedBody746_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 44), (44, 48), (48, 50)]

def optimizedBody746_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (4, 44), (44, 48), (48, 50)]

def optimizedBody746_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody746_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_2 optimizedBody746_3

def optimizedBody746_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody746_1, 746, 2)) (some 744) ([]) (some (2, optimizedBody746_4, 746, 3))

def optimizedBody746_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody746_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody746_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody746_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody746_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551056#64))

def optimizedBody746_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (46, 46), (44, 44), (48, 48)]

def optimizedBody746_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (44, 44), (4, 48)]

def optimizedBody746_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (4, 48)]

def optimizedBody746_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_13 optimizedBody746_3

def optimizedBody746_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody746_12, 746, 4)) (some 739) ([2, 4]) (some (2, optimizedBody746_14, 746, 5))

def optimizedBody746_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551048#64))

def optimizedBody746_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (46, 46), (44, 44)]

def optimizedBody746_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (44, 44)]

def optimizedBody746_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44)]

def optimizedBody746_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_19 optimizedBody746_3

def optimizedBody746_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody746_18, 746, 6)) (some 739) ([2, 4]) (some (2, optimizedBody746_20, 746, 7))

def optimizedBody746_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 18446744073709551040#64))

def optimizedBody746_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody746_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 192#64)

def optimizedBody746_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody746_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (6, 6), (8, 8), (46, 46), (44, 44)]

def optimizedBody746_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.ffi
  (Flapjack.Basis.Pure.MlString.MlString.implode
    [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 50#8, 95#8, 115#8, 117#8, 98#8])
  2 4 6 8
  (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln,
    Flapjack.Spt.ln)

def optimizedBody746_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 44), (44, 46)]

def optimizedBody746_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551056#64))

def optimizedBody746_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody746_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody746_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody746_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_32 optimizedBody746_3

def optimizedBody746_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody746_31, 746, 8)) (some 739) ([2, 4]) (some (2, optimizedBody746_33, 746, 9))

def optimizedBody746_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody746_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody746_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody746_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_36 optimizedBody746_37

def optimizedBody746_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_35 optimizedBody746_38

def optimizedBody746_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_6 optimizedBody746_39

def optimizedBody746_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_34 optimizedBody746_40

def optimizedBody746_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_30 optimizedBody746_41

def optimizedBody746_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_29 optimizedBody746_42

def optimizedBody746_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_9 optimizedBody746_43

def optimizedBody746_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_8 optimizedBody746_44

def optimizedBody746_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_7 optimizedBody746_45

def optimizedBody746_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_28 optimizedBody746_46

def optimizedBody746_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_27 optimizedBody746_47

def optimizedBody746_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_26 optimizedBody746_48

def optimizedBody746_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_25 optimizedBody746_49

def optimizedBody746_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_24 optimizedBody746_50

def optimizedBody746_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_23 optimizedBody746_51

def optimizedBody746_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_22 optimizedBody746_52

def optimizedBody746_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_9 optimizedBody746_53

def optimizedBody746_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_8 optimizedBody746_54

def optimizedBody746_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_7 optimizedBody746_55

def optimizedBody746_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_6 optimizedBody746_56

def optimizedBody746_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_21 optimizedBody746_57

def optimizedBody746_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_17 optimizedBody746_58

def optimizedBody746_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_16 optimizedBody746_59

def optimizedBody746_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_9 optimizedBody746_60

def optimizedBody746_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_8 optimizedBody746_61

def optimizedBody746_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_7 optimizedBody746_62

def optimizedBody746_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_6 optimizedBody746_63

def optimizedBody746_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_15 optimizedBody746_64

def optimizedBody746_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_11 optimizedBody746_65

def optimizedBody746_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_10 optimizedBody746_66

def optimizedBody746_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_9 optimizedBody746_67

def optimizedBody746_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_8 optimizedBody746_68

def optimizedBody746_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_7 optimizedBody746_69

def optimizedBody746_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_6 optimizedBody746_70

def optimizedBody746_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_5 optimizedBody746_71

def optimizedBody746_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody746_0 optimizedBody746_72

def oracle746 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 23)) 23
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 (Flapjack.Spt.ls 22)) 2
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 24 (Flapjack.Spt.ls 2))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23)) 24 Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
            (Flapjack.Spt.bs Flapjack.Spt.ln 23
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 22
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)) 25 Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))))
def optimized746 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(746, 4, optimizedBody746_73)
end InitECandidate.Proofs.SmallStages.Oracles746

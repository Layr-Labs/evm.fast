import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source745
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles745
def optimizedBody745_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (44, 4), (48, 2), (50, 6)]

def optimizedBody745_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 44), (44, 48), (48, 50)]

def optimizedBody745_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (4, 44), (44, 48), (48, 50)]

def optimizedBody745_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody745_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_2 optimizedBody745_3

def optimizedBody745_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody745_1, 745, 2)) (some 744) ([]) (some (2, optimizedBody745_4, 745, 3))

def optimizedBody745_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody745_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody745_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody745_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody745_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551056#64))

def optimizedBody745_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (46, 46), (44, 44), (48, 48)]

def optimizedBody745_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (44, 44), (4, 48)]

def optimizedBody745_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (4, 48)]

def optimizedBody745_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_13 optimizedBody745_3

def optimizedBody745_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody745_12, 745, 4)) (some 739) ([2, 4]) (some (2, optimizedBody745_14, 745, 5))

def optimizedBody745_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551048#64))

def optimizedBody745_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (46, 46), (44, 44)]

def optimizedBody745_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (44, 44)]

def optimizedBody745_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44)]

def optimizedBody745_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_19 optimizedBody745_3

def optimizedBody745_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody745_18, 745, 6)) (some 739) ([2, 4]) (some (2, optimizedBody745_20, 745, 7))

def optimizedBody745_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 18446744073709551040#64))

def optimizedBody745_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody745_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 192#64)

def optimizedBody745_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody745_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (6, 6), (8, 8), (46, 46), (44, 44)]

def optimizedBody745_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.ffi
  (Flapjack.Basis.Pure.MlString.MlString.implode
    [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 50#8, 95#8, 97#8, 100#8, 100#8])
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

def optimizedBody745_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 44), (44, 46)]

def optimizedBody745_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551056#64))

def optimizedBody745_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody745_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody745_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody745_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_32 optimizedBody745_3

def optimizedBody745_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody745_31, 745, 8)) (some 739) ([2, 4]) (some (2, optimizedBody745_33, 745, 9))

def optimizedBody745_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody745_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody745_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody745_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_36 optimizedBody745_37

def optimizedBody745_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_35 optimizedBody745_38

def optimizedBody745_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_6 optimizedBody745_39

def optimizedBody745_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_34 optimizedBody745_40

def optimizedBody745_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_30 optimizedBody745_41

def optimizedBody745_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_29 optimizedBody745_42

def optimizedBody745_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_9 optimizedBody745_43

def optimizedBody745_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_8 optimizedBody745_44

def optimizedBody745_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_7 optimizedBody745_45

def optimizedBody745_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_28 optimizedBody745_46

def optimizedBody745_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_27 optimizedBody745_47

def optimizedBody745_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_26 optimizedBody745_48

def optimizedBody745_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_25 optimizedBody745_49

def optimizedBody745_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_24 optimizedBody745_50

def optimizedBody745_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_23 optimizedBody745_51

def optimizedBody745_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_22 optimizedBody745_52

def optimizedBody745_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_9 optimizedBody745_53

def optimizedBody745_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_8 optimizedBody745_54

def optimizedBody745_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_7 optimizedBody745_55

def optimizedBody745_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_6 optimizedBody745_56

def optimizedBody745_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_21 optimizedBody745_57

def optimizedBody745_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_17 optimizedBody745_58

def optimizedBody745_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_16 optimizedBody745_59

def optimizedBody745_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_9 optimizedBody745_60

def optimizedBody745_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_8 optimizedBody745_61

def optimizedBody745_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_7 optimizedBody745_62

def optimizedBody745_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_6 optimizedBody745_63

def optimizedBody745_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_15 optimizedBody745_64

def optimizedBody745_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_11 optimizedBody745_65

def optimizedBody745_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_10 optimizedBody745_66

def optimizedBody745_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_9 optimizedBody745_67

def optimizedBody745_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_8 optimizedBody745_68

def optimizedBody745_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_7 optimizedBody745_69

def optimizedBody745_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_6 optimizedBody745_70

def optimizedBody745_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_5 optimizedBody745_71

def optimizedBody745_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody745_0 optimizedBody745_72

def oracle745 : Option (Spt Nat) :=
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
def optimized745 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(745, 4, optimizedBody745_73)
end InitECandidate.Proofs.SmallStages.Oracles745

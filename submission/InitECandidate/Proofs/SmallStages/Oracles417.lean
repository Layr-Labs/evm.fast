import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source417
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles417
def optimizedBody417_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 2)]

def optimizedBody417_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (8, 44), (46, 46)]

def optimizedBody417_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (46, 46)]

def optimizedBody417_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody417_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_2 optimizedBody417_3

def optimizedBody417_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody417_1, 417, 2)) (some 409) ([2]) (some (2, optimizedBody417_4, 417, 3))

def optimizedBody417_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody417_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody417_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody417_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody417_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody417_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody417_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody417_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_11 optimizedBody417_12

def optimizedBody417_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_10 optimizedBody417_13

def optimizedBody417_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_6 optimizedBody417_14

def optimizedBody417_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody417_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody417_15 optimizedBody417_16

def optimizedBody417_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody417_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody417_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody417_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody417_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551480#64))

def optimizedBody417_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody417_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 8), (46, 46)]

def optimizedBody417_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody417_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody417_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_26 optimizedBody417_3

def optimizedBody417_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody417_25, 417, 4)) (some 79) ([2, 4, 6]) (some (2, optimizedBody417_27, 417, 5))

def optimizedBody417_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody417_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_11 optimizedBody417_29

def optimizedBody417_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_10 optimizedBody417_30

def optimizedBody417_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_6 optimizedBody417_31

def optimizedBody417_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody417_32 optimizedBody417_16

def optimizedBody417_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 6)]

def optimizedBody417_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody417_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody417_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_36 optimizedBody417_3

def optimizedBody417_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody417_35, 417, 6)) (some 416) ([2]) (some (2, optimizedBody417_37, 417, 7))

def optimizedBody417_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody417_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_11 optimizedBody417_39

def optimizedBody417_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_10 optimizedBody417_40

def optimizedBody417_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_6 optimizedBody417_41

def optimizedBody417_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody417_42 optimizedBody417_16

def optimizedBody417_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody417_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_44 optimizedBody417_40

def optimizedBody417_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_6 optimizedBody417_45

def optimizedBody417_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_6 optimizedBody417_46

def optimizedBody417_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_43 optimizedBody417_47

def optimizedBody417_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_10 optimizedBody417_48

def optimizedBody417_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_7 optimizedBody417_49

def optimizedBody417_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_6 optimizedBody417_50

def optimizedBody417_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_38 optimizedBody417_51

def optimizedBody417_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_34 optimizedBody417_52

def optimizedBody417_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_6 optimizedBody417_53

def optimizedBody417_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_6 optimizedBody417_54

def optimizedBody417_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_33 optimizedBody417_55

def optimizedBody417_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_10 optimizedBody417_56

def optimizedBody417_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_7 optimizedBody417_57

def optimizedBody417_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_6 optimizedBody417_58

def optimizedBody417_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_28 optimizedBody417_59

def optimizedBody417_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_24 optimizedBody417_60

def optimizedBody417_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_23 optimizedBody417_61

def optimizedBody417_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_22 optimizedBody417_62

def optimizedBody417_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_21 optimizedBody417_63

def optimizedBody417_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_20 optimizedBody417_64

def optimizedBody417_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_19 optimizedBody417_65

def optimizedBody417_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_18 optimizedBody417_66

def optimizedBody417_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_7 optimizedBody417_67

def optimizedBody417_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_6 optimizedBody417_68

def optimizedBody417_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_6 optimizedBody417_69

def optimizedBody417_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_17 optimizedBody417_70

def optimizedBody417_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_9 optimizedBody417_71

def optimizedBody417_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_8 optimizedBody417_72

def optimizedBody417_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_7 optimizedBody417_73

def optimizedBody417_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_6 optimizedBody417_74

def optimizedBody417_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_5 optimizedBody417_75

def optimizedBody417_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody417_0 optimizedBody417_76

def oracle417 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 4
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 2)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 1))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 22 Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.ls 23))
          Flapjack.Spt.ln))))
def optimized417 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(417, 2, optimizedBody417_77)
end InitECandidate.Proofs.SmallStages.Oracles417

import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source418
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles418
def optimizedBody418_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (0, 0)]

def optimizedBody418_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody418_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody418_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody418_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody418_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody418_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody418_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_5 optimizedBody418_6

def optimizedBody418_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_4 optimizedBody418_7

def optimizedBody418_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_3 optimizedBody418_8

def optimizedBody418_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody418_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody418_9 optimizedBody418_10

def optimizedBody418_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody418_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 48#64))

def optimizedBody418_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody418_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody418_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody418_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551480#64))

def optimizedBody418_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody418_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 8)]

def optimizedBody418_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (10, 44), (0, 46)]

def optimizedBody418_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (0, 46)]

def optimizedBody418_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody418_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_21 optimizedBody418_22

def optimizedBody418_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody418_20, 418, 2)) (some 79) ([2, 4, 6]) (some (2, optimizedBody418_23, 418, 3))

def optimizedBody418_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody418_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody418_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_5 optimizedBody418_26

def optimizedBody418_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_4 optimizedBody418_27

def optimizedBody418_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_3 optimizedBody418_28

def optimizedBody418_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody418_29 optimizedBody418_10

def optimizedBody418_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody418_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody418_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody418_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody418_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody418_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 10)]

def optimizedBody418_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody418_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody418_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_38 optimizedBody418_22

def optimizedBody418_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody418_37, 418, 4)) (some 102) ([2, 4, 6, 8]) (some (2, optimizedBody418_39, 418, 5))

def optimizedBody418_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody418_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_41 optimizedBody418_6

def optimizedBody418_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_3 optimizedBody418_42

def optimizedBody418_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_40 optimizedBody418_43

def optimizedBody418_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_36 optimizedBody418_44

def optimizedBody418_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_35 optimizedBody418_45

def optimizedBody418_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_31 optimizedBody418_46

def optimizedBody418_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_34 optimizedBody418_47

def optimizedBody418_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_31 optimizedBody418_48

def optimizedBody418_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_33 optimizedBody418_49

def optimizedBody418_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_31 optimizedBody418_50

def optimizedBody418_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_32 optimizedBody418_51

def optimizedBody418_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_31 optimizedBody418_52

def optimizedBody418_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_3 optimizedBody418_53

def optimizedBody418_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_3 optimizedBody418_54

def optimizedBody418_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_30 optimizedBody418_55

def optimizedBody418_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_4 optimizedBody418_56

def optimizedBody418_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_25 optimizedBody418_57

def optimizedBody418_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_3 optimizedBody418_58

def optimizedBody418_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_24 optimizedBody418_59

def optimizedBody418_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_19 optimizedBody418_60

def optimizedBody418_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_18 optimizedBody418_61

def optimizedBody418_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_17 optimizedBody418_62

def optimizedBody418_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_16 optimizedBody418_63

def optimizedBody418_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_15 optimizedBody418_64

def optimizedBody418_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_14 optimizedBody418_65

def optimizedBody418_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_13 optimizedBody418_66

def optimizedBody418_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_12 optimizedBody418_67

def optimizedBody418_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_3 optimizedBody418_68

def optimizedBody418_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_3 optimizedBody418_69

def optimizedBody418_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_11 optimizedBody418_70

def optimizedBody418_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_2 optimizedBody418_71

def optimizedBody418_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_1 optimizedBody418_72

def optimizedBody418_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody418_0 optimizedBody418_73

def oracle418 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln) 1
            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 2 (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 4 Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 1)))
            4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 2))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 2))
            0 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
          Flapjack.Spt.ln))))
def optimized418 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(418, 2, optimizedBody418_74)
end InitECandidate.Proofs.SmallStages.Oracles418

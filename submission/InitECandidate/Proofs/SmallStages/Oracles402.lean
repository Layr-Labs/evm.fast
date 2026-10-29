import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source402
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles402
def optimizedBody402_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody402_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody402_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody402_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody402_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551448#64))

def optimizedBody402_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody402_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 2), (48, 4)]

def optimizedBody402_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (4, 4), (8, 44), (46, 46), (0, 48)]

def optimizedBody402_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (46, 46), (0, 48)]

def optimizedBody402_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody402_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_8 optimizedBody402_9

def optimizedBody402_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody402_7, 402, 2)) (some 186) ([2, 4]) (some (2, optimizedBody402_10, 402, 3))

def optimizedBody402_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody402_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody402_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody402_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody402_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody402_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody402_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody402_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_17 optimizedBody402_18

def optimizedBody402_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_16 optimizedBody402_19

def optimizedBody402_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_15 optimizedBody402_20

def optimizedBody402_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_12 optimizedBody402_21

def optimizedBody402_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody402_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody402_22 optimizedBody402_23

def optimizedBody402_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody402_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 0), (44, 8), (46, 46), (48, 0)]

def optimizedBody402_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody402_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody402_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_28 optimizedBody402_9

def optimizedBody402_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody402_27, 402, 4)) (some 307) ([2, 4]) (some (2, optimizedBody402_29, 402, 5))

def optimizedBody402_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (2, 6)]

def optimizedBody402_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody402_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0)]

def optimizedBody402_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody402_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody402_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_35 optimizedBody402_9

def optimizedBody402_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody402_34, 402, 6)) (some 190) ([2, 4, 6]) (some (2, optimizedBody402_36, 402, 7))

def optimizedBody402_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody402_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody402_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_38 optimizedBody402_39

def optimizedBody402_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_12 optimizedBody402_40

def optimizedBody402_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_37 optimizedBody402_41

def optimizedBody402_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_33 optimizedBody402_42

def optimizedBody402_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_32 optimizedBody402_43

def optimizedBody402_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_31 optimizedBody402_44

def optimizedBody402_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_12 optimizedBody402_45

def optimizedBody402_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_30 optimizedBody402_46

def optimizedBody402_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_26 optimizedBody402_47

def optimizedBody402_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_25 optimizedBody402_48

def optimizedBody402_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_4 optimizedBody402_49

def optimizedBody402_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_3 optimizedBody402_50

def optimizedBody402_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_2 optimizedBody402_51

def optimizedBody402_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_1 optimizedBody402_52

def optimizedBody402_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_12 optimizedBody402_53

def optimizedBody402_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_12 optimizedBody402_54

def optimizedBody402_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_24 optimizedBody402_55

def optimizedBody402_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_14 optimizedBody402_56

def optimizedBody402_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_13 optimizedBody402_57

def optimizedBody402_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_12 optimizedBody402_58

def optimizedBody402_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_11 optimizedBody402_59

def optimizedBody402_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_6 optimizedBody402_60

def optimizedBody402_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_5 optimizedBody402_61

def optimizedBody402_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_4 optimizedBody402_62

def optimizedBody402_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_3 optimizedBody402_63

def optimizedBody402_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_2 optimizedBody402_64

def optimizedBody402_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_1 optimizedBody402_65

def optimizedBody402_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody402_0 optimizedBody402_66

def oracle402 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)) 1
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 23 Flapjack.Spt.ln)))
          (Flapjack.Spt.bs Flapjack.Spt.ln 0
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln 2
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 4 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 22)) 22 Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24 Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln)))))))
def optimized402 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(402, 2, optimizedBody402_67)
end InitECandidate.Proofs.SmallStages.Oracles402

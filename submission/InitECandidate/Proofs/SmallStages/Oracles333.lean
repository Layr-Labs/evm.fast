import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source333
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles333
def optimizedBody333_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (4, 4)]

def optimizedBody333_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody333_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody333_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody333_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody333_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody333_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody333_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody333_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody333_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551488#64))

def optimizedBody333_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody333_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (48, 0)]

def optimizedBody333_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 48)]

def optimizedBody333_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 48)]

def optimizedBody333_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody333_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_13 optimizedBody333_14

def optimizedBody333_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody333_12, 333, 2)) (some 77) ([2, 4, 6]) (some (2, optimizedBody333_15, 333, 3))

def optimizedBody333_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody333_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody333_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_17 optimizedBody333_18

def optimizedBody333_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_3 optimizedBody333_19

def optimizedBody333_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_4 optimizedBody333_20

def optimizedBody333_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_16 optimizedBody333_21

def optimizedBody333_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_11 optimizedBody333_22

def optimizedBody333_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_10 optimizedBody333_23

def optimizedBody333_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_9 optimizedBody333_24

def optimizedBody333_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_8 optimizedBody333_25

def optimizedBody333_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_7 optimizedBody333_26

def optimizedBody333_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_6 optimizedBody333_27

def optimizedBody333_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_5 optimizedBody333_28

def optimizedBody333_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_4 optimizedBody333_29

def optimizedBody333_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 4), (6, 6), (44, 0)]

def optimizedBody333_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody333_30 optimizedBody333_31

def optimizedBody333_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 44), (46, 46)]

def optimizedBody333_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody333_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody333_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_35 optimizedBody333_14

def optimizedBody333_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody333_34, 333, 4)) (some 332) ([2]) (some (2, optimizedBody333_36, 333, 5))

def optimizedBody333_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody333_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody333_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody333_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody333_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_41 optimizedBody333_14

def optimizedBody333_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody333_40, 333, 6)) (some 77) ([2, 4, 6]) (some (2, optimizedBody333_42, 333, 7))

def optimizedBody333_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_43 optimizedBody333_21

def optimizedBody333_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_39 optimizedBody333_44

def optimizedBody333_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_10 optimizedBody333_45

def optimizedBody333_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_38 optimizedBody333_46

def optimizedBody333_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_4 optimizedBody333_47

def optimizedBody333_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_37 optimizedBody333_48

def optimizedBody333_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_33 optimizedBody333_49

def optimizedBody333_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_4 optimizedBody333_50

def optimizedBody333_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_4 optimizedBody333_51

def optimizedBody333_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_32 optimizedBody333_52

def optimizedBody333_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_3 optimizedBody333_53

def optimizedBody333_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_2 optimizedBody333_54

def optimizedBody333_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_1 optimizedBody333_55

def optimizedBody333_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody333_0 optimizedBody333_56

def oracle333 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 Flapjack.Spt.ln) 2
            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 23))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 3 Flapjack.Spt.ln))
            0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) 1
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
          Flapjack.Spt.ln))))
def optimized333 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(333, 3, optimizedBody333_57)
end InitECandidate.Proofs.SmallStages.Oracles333

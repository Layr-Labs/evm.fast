import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source527
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles527
def optimizedBody527_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody527_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (0, 2), (8, 8), (44, 44)]

def optimizedBody527_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody527_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody527_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_2 optimizedBody527_3

def optimizedBody527_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody527_1, 527, 2)) (some 477) ([]) (some (2, optimizedBody527_4, 527, 3))

def optimizedBody527_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody527_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody527_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 6), (50, 0), (52, 8)]

def optimizedBody527_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (6, 48), (0, 50), (8, 52)]

def optimizedBody527_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48), (0, 50), (8, 52)]

def optimizedBody527_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_10 optimizedBody527_3

def optimizedBody527_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody527_9, 527, 4)) (some 472) ([2]) (some (2, optimizedBody527_11, 527, 5))

def optimizedBody527_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 0)]

def optimizedBody527_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (6, 44), (0, 46)]

def optimizedBody527_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (0, 46)]

def optimizedBody527_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_15 optimizedBody527_3

def optimizedBody527_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody527_14, 527, 6)) (some 488) ([2, 4, 6, 8]) (some (2, optimizedBody527_16, 527, 7))

def optimizedBody527_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody527_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody527_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody527_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody527_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody527_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody527_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_23 optimizedBody527_3

def optimizedBody527_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_7 optimizedBody527_24

def optimizedBody527_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_22 optimizedBody527_25

def optimizedBody527_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_21 optimizedBody527_26

def optimizedBody527_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_20 optimizedBody527_27

def optimizedBody527_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_6 optimizedBody527_28

def optimizedBody527_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody527_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody527_29 optimizedBody527_30

def optimizedBody527_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody527_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody527_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody527_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody527_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody527_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody527_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody527_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_21 optimizedBody527_38

def optimizedBody527_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_19 optimizedBody527_39

def optimizedBody527_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_37 optimizedBody527_40

def optimizedBody527_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_36 optimizedBody527_41

def optimizedBody527_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_35 optimizedBody527_42

def optimizedBody527_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_34 optimizedBody527_43

def optimizedBody527_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_33 optimizedBody527_44

def optimizedBody527_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_32 optimizedBody527_45

def optimizedBody527_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_6 optimizedBody527_46

def optimizedBody527_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_6 optimizedBody527_47

def optimizedBody527_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_31 optimizedBody527_48

def optimizedBody527_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_19 optimizedBody527_49

def optimizedBody527_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_18 optimizedBody527_50

def optimizedBody527_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_6 optimizedBody527_51

def optimizedBody527_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_17 optimizedBody527_52

def optimizedBody527_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_13 optimizedBody527_53

def optimizedBody527_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_6 optimizedBody527_54

def optimizedBody527_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_12 optimizedBody527_55

def optimizedBody527_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_8 optimizedBody527_56

def optimizedBody527_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_7 optimizedBody527_57

def optimizedBody527_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_6 optimizedBody527_58

def optimizedBody527_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_5 optimizedBody527_59

def optimizedBody527_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody527_0 optimizedBody527_60

def oracle527 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 (Flapjack.Spt.ls 2)) 0
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln) 4
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bs Flapjack.Spt.ln 22
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 22 Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))))
def optimized527 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(527, 1, optimizedBody527_61)
end InitECandidate.Proofs.SmallStages.Oracles527

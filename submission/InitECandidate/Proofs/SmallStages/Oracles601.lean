import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source601
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles601
def optimizedBody601_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody601_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody601_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (46, 2)]

def optimizedBody601_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 2)]

def optimizedBody601_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody601_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody601_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody601_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_5 optimizedBody601_6

def optimizedBody601_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody601_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 (Flapjack.WordStore.temp 0#5)

def optimizedBody601_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody601_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody601_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_11 optimizedBody601_6

def optimizedBody601_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody601_10, 601, 3)) (some 599) ([2]) (some (2, optimizedBody601_12, 601, 4))

def optimizedBody601_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody601_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_8 optimizedBody601_14

def optimizedBody601_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_13 optimizedBody601_15

def optimizedBody601_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_4 optimizedBody601_16

def optimizedBody601_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_9 optimizedBody601_17

def optimizedBody601_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_8 optimizedBody601_18

def optimizedBody601_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 8#64) optimizedBody601_7 optimizedBody601_19

def optimizedBody601_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_20 optimizedBody601_15

def optimizedBody601_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_4 optimizedBody601_21

def optimizedBody601_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody601_3, 601, 2)) (some 600) ([]) (some (2, optimizedBody601_22, 601, 5))

def optimizedBody601_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody601_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody601_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody601_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody601_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody601_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody601_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody601_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody601_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody601_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_31 optimizedBody601_32

def optimizedBody601_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_30 optimizedBody601_33

def optimizedBody601_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_29 optimizedBody601_34

def optimizedBody601_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_28 optimizedBody601_35

def optimizedBody601_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_27 optimizedBody601_36

def optimizedBody601_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_26 optimizedBody601_37

def optimizedBody601_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_25 optimizedBody601_38

def optimizedBody601_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_8 optimizedBody601_39

def optimizedBody601_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody601_40 optimizedBody601_8

def optimizedBody601_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody601_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_31 optimizedBody601_42

def optimizedBody601_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_1 optimizedBody601_43

def optimizedBody601_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_8 optimizedBody601_44

def optimizedBody601_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_41 optimizedBody601_45

def optimizedBody601_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_1 optimizedBody601_46

def optimizedBody601_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_24 optimizedBody601_47

def optimizedBody601_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_8 optimizedBody601_48

def optimizedBody601_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_23 optimizedBody601_49

def optimizedBody601_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_2 optimizedBody601_50

def optimizedBody601_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_1 optimizedBody601_51

def optimizedBody601_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody601_0 optimizedBody601_52

def oracle601 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln)))
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            1 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 23 (Flapjack.Spt.ls 0)))
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            0
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22)))))))
def optimized601 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(601, 1, optimizedBody601_53)
end InitECandidate.Proofs.SmallStages.Oracles601

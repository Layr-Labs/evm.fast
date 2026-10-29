import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source602
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles602
def optimizedBody602_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody602_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody602_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody602_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody602_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody602_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 160#64))

def optimizedBody602_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody602_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody602_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody602_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551328#64))

def optimizedBody602_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody602_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody602_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody602_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody602_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody602_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_13 optimizedBody602_14

def optimizedBody602_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody602_12, 602, 2)) (some 393) ([2]) (some (2, optimizedBody602_15, 602, 3))

def optimizedBody602_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_7 optimizedBody602_0

def optimizedBody602_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_16 optimizedBody602_17

def optimizedBody602_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_11 optimizedBody602_18

def optimizedBody602_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_10 optimizedBody602_19

def optimizedBody602_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_9 optimizedBody602_20

def optimizedBody602_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_8 optimizedBody602_21

def optimizedBody602_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_7 optimizedBody602_22

def optimizedBody602_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 6) optimizedBody602_23 optimizedBody602_17

def optimizedBody602_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody602_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody602_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody602_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_26 optimizedBody602_27

def optimizedBody602_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_25 optimizedBody602_28

def optimizedBody602_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_7 optimizedBody602_29

def optimizedBody602_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_24 optimizedBody602_30

def optimizedBody602_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_6 optimizedBody602_31

def optimizedBody602_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_5 optimizedBody602_32

def optimizedBody602_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_4 optimizedBody602_33

def optimizedBody602_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_3 optimizedBody602_34

def optimizedBody602_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_35

def optimizedBody602_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_1 optimizedBody602_36

def optimizedBody602_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_0 optimizedBody602_37

def oracle602 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))) 0
          (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln 1
            (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
          Flapjack.Spt.ln))))
def optimized602 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(602, 1, optimizedBody602_38)
end InitECandidate.Proofs.SmallStages.Oracles602

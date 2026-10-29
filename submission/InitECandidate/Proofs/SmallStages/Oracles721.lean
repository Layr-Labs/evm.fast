import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source721
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles721
def optimizedBody721_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 0), (46, 8), (48, 4), (50, 12), (52, 2), (54, 10), (56, 6)]

def optimizedBody721_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (26, 44), (20, 46), (16, 48), (24, 50), (14, 52), (22, 54), (18, 56)]

def optimizedBody721_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (26, 44), (20, 46), (16, 48), (24, 50), (14, 52), (22, 54), (18, 56)]

def optimizedBody721_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody721_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_2 optimizedBody721_3

def optimizedBody721_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody721_1, 721, 2)) (some 714) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody721_4, 721, 3))

def optimizedBody721_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody721_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody721_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody721_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody721_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody721_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody721_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody721_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody721_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody721_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody721_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 26 [2, 4, 6, 8, 10, 12]

def optimizedBody721_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_15 optimizedBody721_16

def optimizedBody721_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_14 optimizedBody721_17

def optimizedBody721_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_13 optimizedBody721_18

def optimizedBody721_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_12 optimizedBody721_19

def optimizedBody721_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_11 optimizedBody721_20

def optimizedBody721_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_10 optimizedBody721_21

def optimizedBody721_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_9 optimizedBody721_22

def optimizedBody721_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_6 optimizedBody721_23

def optimizedBody721_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody721_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody721_24 optimizedBody721_25

def optimizedBody721_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24), (22, 22), (20, 20), (18, 18), (16, 16), (14, 14)]

def optimizedBody721_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 1873798617647539866#64)

def optimizedBody721_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 5412103778470702295#64)

def optimizedBody721_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 7239337960414712511#64)

def optimizedBody721_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7435674573564081700#64)

def optimizedBody721_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2210141511517208575#64)

def optimizedBody721_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 13402431016077863595#64)

def optimizedBody721_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 26)]

def optimizedBody721_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 2), (4, 4), (12, 12), (6, 6), (10, 10), (8, 8), (0, 44)]

def optimizedBody721_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody721_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_36 optimizedBody721_3

def optimizedBody721_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12, 14]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody721_35, 721, 4)) (some 718) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody721_37, 721, 5))

def optimizedBody721_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 14), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody721_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8, 10, 12]

def optimizedBody721_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_39 optimizedBody721_40

def optimizedBody721_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_6 optimizedBody721_41

def optimizedBody721_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_38 optimizedBody721_42

def optimizedBody721_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_34 optimizedBody721_43

def optimizedBody721_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_33 optimizedBody721_44

def optimizedBody721_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_32 optimizedBody721_45

def optimizedBody721_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_31 optimizedBody721_46

def optimizedBody721_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_30 optimizedBody721_47

def optimizedBody721_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_29 optimizedBody721_48

def optimizedBody721_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_28 optimizedBody721_49

def optimizedBody721_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_27 optimizedBody721_50

def optimizedBody721_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_6 optimizedBody721_51

def optimizedBody721_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_6 optimizedBody721_52

def optimizedBody721_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_26 optimizedBody721_53

def optimizedBody721_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_8 optimizedBody721_54

def optimizedBody721_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_7 optimizedBody721_55

def optimizedBody721_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_6 optimizedBody721_56

def optimizedBody721_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_5 optimizedBody721_57

def optimizedBody721_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody721_0 optimizedBody721_58

def oracle721 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 11)) 3
        (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9)))
      1
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 10)) 2
        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 8))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 13 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 8)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 10)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 7))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 10)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 9)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))))
def optimized721 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(721, 7, optimizedBody721_59)
end InitECandidate.Proofs.SmallStages.Oracles721

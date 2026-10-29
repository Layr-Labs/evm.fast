import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data696
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate679
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody696_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody696_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody696_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody696_0 globalBody696_1

def globalBody696_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody696_4 : Prog (BitVec 64) :=
.seq globalBody696_2 globalBody696_3

def globalBody696_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody696_4 globalBody696_1

def globalBody696_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody696_0 globalBody696_1

def globalBody696_7 : Prog (BitVec 64) :=
.seq globalBody696_6 globalBody696_3

def globalBody696_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody696_7 globalBody696_1

def globalBody696_9 : Prog (BitVec 64) :=
.seq globalBody696_5 globalBody696_8

def globalBody696_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody696_0 globalBody696_1

def globalBody696_11 : Prog (BitVec 64) :=
.seq globalBody696_10 globalBody696_3

def globalBody696_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody696_11 globalBody696_1

def globalBody696_13 : Prog (BitVec 64) :=
.seq globalBody696_9 globalBody696_12

def globalBody696_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody696_0 globalBody696_1

def globalBody696_15 : Prog (BitVec 64) :=
.seq globalBody696_14 globalBody696_3

def globalBody696_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody696_15 globalBody696_1

def globalBody696_17 : Prog (BitVec 64) :=
.seq globalBody696_13 globalBody696_16

def globalBody696_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody696_0 globalBody696_1

def globalBody696_19 : Prog (BitVec 64) :=
.seq globalBody696_18 globalBody696_3

def globalBody696_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody696_19 globalBody696_1

def globalBody696_21 : Prog (BitVec 64) :=
.seq globalBody696_17 globalBody696_20

def globalBody696_22 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody696_0 globalBody696_1

def globalBody696_23 : Prog (BitVec 64) :=
.seq globalBody696_21 globalBody696_22

def globalBody696_24 : Prog (BitVec 64) :=
.seq globalBody696_23 globalBody696_3

def globalData696 : Decl (BitVec 64) :=
.function { name := "bls_fp_lt_raw", inline := false, exported := false, params := [("a",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("b",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := globalBody696_24, returnShape := (Flapjack.Shape.one) }
def globalOutput696 := Pancake.PanLang.declToHOL globalData696
end InitECandidate.Proofs.FrontendStages.Declarations

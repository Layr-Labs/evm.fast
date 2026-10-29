import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data700
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate683
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody700_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody700_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody700_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody700_0 globalBody700_1

def globalBody700_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody700_4 : Prog (BitVec 64) :=
.seq globalBody700_2 globalBody700_3

def globalBody700_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody700_4 globalBody700_1

def globalBody700_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody700_0 globalBody700_1

def globalBody700_7 : Prog (BitVec 64) :=
.seq globalBody700_6 globalBody700_3

def globalBody700_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody700_7 globalBody700_1

def globalBody700_9 : Prog (BitVec 64) :=
.seq globalBody700_5 globalBody700_8

def globalBody700_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody700_0 globalBody700_1

def globalBody700_11 : Prog (BitVec 64) :=
.seq globalBody700_10 globalBody700_3

def globalBody700_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody700_11 globalBody700_1

def globalBody700_13 : Prog (BitVec 64) :=
.seq globalBody700_9 globalBody700_12

def globalBody700_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody700_0 globalBody700_1

def globalBody700_15 : Prog (BitVec 64) :=
.seq globalBody700_14 globalBody700_3

def globalBody700_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody700_15 globalBody700_1

def globalBody700_17 : Prog (BitVec 64) :=
.seq globalBody700_13 globalBody700_16

def globalBody700_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody700_0 globalBody700_1

def globalBody700_19 : Prog (BitVec 64) :=
.seq globalBody700_18 globalBody700_3

def globalBody700_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody700_19 globalBody700_1

def globalBody700_21 : Prog (BitVec 64) :=
.seq globalBody700_17 globalBody700_20

def globalBody700_22 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody700_0 globalBody700_1

def globalBody700_23 : Prog (BitVec 64) :=
.seq globalBody700_21 globalBody700_22

def globalBody700_24 : Prog (BitVec 64) :=
.seq globalBody700_23 globalBody700_3

def globalData700 : Decl (BitVec 64) :=
.function { name := "bls_fp_lt_raw", inline := false, exported := false, params := [("a",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("b",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := globalBody700_24, returnShape := (Flapjack.Shape.one) }
def globalOutput700 := Pancake.PanLang.declToHOL globalData700
end InitECandidate.Proofs.FrontendStages.Declarations

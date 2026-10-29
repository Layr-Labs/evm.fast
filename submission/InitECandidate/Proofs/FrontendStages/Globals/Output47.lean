import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data47
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate30
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody47_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody47_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody47_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody47_0 globalBody47_1

def globalBody47_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody47_4 : Prog (BitVec 64) :=
.seq globalBody47_2 globalBody47_3

def globalBody47_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody47_4 globalBody47_1

def globalBody47_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody47_0 globalBody47_1

def globalBody47_7 : Prog (BitVec 64) :=
.seq globalBody47_6 globalBody47_3

def globalBody47_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody47_7 globalBody47_1

def globalBody47_9 : Prog (BitVec 64) :=
.seq globalBody47_5 globalBody47_8

def globalBody47_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody47_0 globalBody47_1

def globalBody47_11 : Prog (BitVec 64) :=
.seq globalBody47_10 globalBody47_3

def globalBody47_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody47_11 globalBody47_1

def globalBody47_13 : Prog (BitVec 64) :=
.seq globalBody47_9 globalBody47_12

def globalBody47_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody47_0 globalBody47_1

def globalBody47_15 : Prog (BitVec 64) :=
.seq globalBody47_13 globalBody47_14

def globalBody47_16 : Prog (BitVec 64) :=
.seq globalBody47_15 globalBody47_3

def globalData47 : Decl (BitVec 64) :=
.function { name := "u256_lt", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody47_16, returnShape := (Flapjack.Shape.one) }
def globalOutput47 := Pancake.PanLang.declToHOL globalData47
end InitECandidate.Proofs.FrontendStages.Declarations

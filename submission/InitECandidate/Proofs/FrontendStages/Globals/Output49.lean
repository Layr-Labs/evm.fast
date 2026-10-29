import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data49
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate32
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody49_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody49_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody49_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody49_0 globalBody49_1

def globalBody49_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody49_4 : Prog (BitVec 64) :=
.seq globalBody49_2 globalBody49_3

def globalBody49_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody49_4 globalBody49_1

def globalBody49_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody49_0 globalBody49_1

def globalBody49_7 : Prog (BitVec 64) :=
.seq globalBody49_6 globalBody49_3

def globalBody49_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody49_7 globalBody49_1

def globalBody49_9 : Prog (BitVec 64) :=
.seq globalBody49_5 globalBody49_8

def globalBody49_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody49_0 globalBody49_1

def globalBody49_11 : Prog (BitVec 64) :=
.seq globalBody49_10 globalBody49_3

def globalBody49_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody49_11 globalBody49_1

def globalBody49_13 : Prog (BitVec 64) :=
.seq globalBody49_9 globalBody49_12

def globalBody49_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"))) globalBody49_0 globalBody49_1

def globalBody49_15 : Prog (BitVec 64) :=
.seq globalBody49_13 globalBody49_14

def globalBody49_16 : Prog (BitVec 64) :=
.seq globalBody49_15 globalBody49_3

def globalData49 : Decl (BitVec 64) :=
.function { name := "u256_slt", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody49_16, returnShape := (Flapjack.Shape.one) }
def globalOutput49 := Pancake.PanLang.declToHOL globalData49
end InitECandidate.Proofs.FrontendStages.Declarations

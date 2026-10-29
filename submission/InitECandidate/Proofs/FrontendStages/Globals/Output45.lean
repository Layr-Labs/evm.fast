import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data45
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate28
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody45_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody45_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody45_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 256#64)) globalBody45_0 globalBody45_1

def globalBody45_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "l")
        (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 63#64]),
      Flapjack.Exp.const 1#64])

def globalBody45_4 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.one) ("u256_limb") ([Flapjack.Exp.var Flapjack.VarKind.local "a",
  Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 6#64)]) globalBody45_3

def globalBody45_5 : Prog (BitVec 64) :=
.seq globalBody45_2 globalBody45_4

def globalData45 : Decl (BitVec 64) :=
.function { name := "u256_bit", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("t", Flapjack.Shape.one)], body := globalBody45_5, returnShape := (Flapjack.Shape.one) }
def globalOutput45 := Pancake.PanLang.declToHOL globalData45
end InitECandidate.Proofs.FrontendStages.Declarations

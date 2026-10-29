import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data28
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate12
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody28_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "p")
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 24#64))

def globalBody28_1 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 16#64))

def globalBody28_2 : Prog (BitVec 64) :=
.seq globalBody28_0 globalBody28_1

def globalBody28_3 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 2#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 8#64))

def globalBody28_4 : Prog (BitVec 64) :=
.seq globalBody28_2 globalBody28_3

def globalBody28_5 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 3#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "v")

def globalBody28_6 : Prog (BitVec 64) :=
.seq globalBody28_4 globalBody28_5

def globalBody28_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody28_8 : Prog (BitVec 64) :=
.seq globalBody28_6 globalBody28_7

def globalData28 : Decl (BitVec 64) :=
.function { name := "st_be32", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("v", Flapjack.Shape.one)], body := globalBody28_8, returnShape := (Flapjack.Shape.one) }
def globalOutput28 := Pancake.PanLang.declToHOL globalData28
end InitECandidate.Proofs.FrontendStages.Declarations

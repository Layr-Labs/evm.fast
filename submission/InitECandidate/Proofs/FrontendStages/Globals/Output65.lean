import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data65
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate49
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody65_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "p")
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64])

def globalBody65_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
    (Flapjack.Exp.const 32#64))

def globalBody65_2 : Prog (BitVec 64) :=
.seq globalBody65_0 globalBody65_1

def globalBody65_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64])

def globalBody65_4 : Prog (BitVec 64) :=
.seq globalBody65_2 globalBody65_3

def globalBody65_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
    (Flapjack.Exp.const 32#64))

def globalBody65_6 : Prog (BitVec 64) :=
.seq globalBody65_4 globalBody65_5

def globalBody65_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64])

def globalBody65_8 : Prog (BitVec 64) :=
.seq globalBody65_6 globalBody65_7

def globalBody65_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
    (Flapjack.Exp.const 32#64))

def globalBody65_10 : Prog (BitVec 64) :=
.seq globalBody65_8 globalBody65_9

def globalBody65_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64])

def globalBody65_12 : Prog (BitVec 64) :=
.seq globalBody65_10 globalBody65_11

def globalBody65_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
    (Flapjack.Exp.const 32#64))

def globalBody65_14 : Prog (BitVec 64) :=
.seq globalBody65_12 globalBody65_13

def globalBody65_15 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody65_16 : Prog (BitVec 64) :=
.seq globalBody65_14 globalBody65_15

def globalData65 : Decl (BitVec 64) :=
.function { name := "u256_to_digits", inline := false, exported := false, params := [("p", Flapjack.Shape.one),
  ("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody65_16, returnShape := (Flapjack.Shape.one) }
def globalOutput65 := Pancake.PanLang.declToHOL globalData65
end InitECandidate.Proofs.FrontendStages.Declarations

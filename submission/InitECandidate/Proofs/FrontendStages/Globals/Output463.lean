import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data463
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate447
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody463_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "avail"
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "buf_len", Flapjack.Exp.var Flapjack.VarKind.local "start"])

def globalBody463_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "avail" (Flapjack.Exp.var Flapjack.VarKind.local "size")

def globalBody463_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody463_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "size")
  (Flapjack.Exp.var Flapjack.VarKind.local "avail")) globalBody463_1 globalBody463_2

def globalBody463_4 : Prog (BitVec 64) :=
.seq globalBody463_0 globalBody463_3

def globalBody463_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.var Flapjack.VarKind.local "start"],
    Flapjack.Exp.var Flapjack.VarKind.local "avail"]

def globalBody463_6 : Prog (BitVec 64) :=
.seq globalBody463_4 globalBody463_5

def globalBody463_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "start")
  (Flapjack.Exp.var Flapjack.VarKind.local "buf_len")) globalBody463_6 globalBody463_2

def globalBody463_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "avail"],
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "size", Flapjack.Exp.var Flapjack.VarKind.local "avail"]]

def globalBody463_9 : Prog (BitVec 64) :=
.seq globalBody463_7 globalBody463_8

def globalBody463_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody463_11 : Prog (BitVec 64) :=
.seq globalBody463_9 globalBody463_10

def globalBody463_12 : Prog (BitVec 64) :=
.dec ("avail") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody463_11

def globalData463 : Decl (BitVec 64) :=
.function { name := "buffer_read", inline := false, exported := false, params := [("buf", Flapjack.Shape.one), ("buf_len", Flapjack.Shape.one), ("start", Flapjack.Shape.one),
  ("size", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody463_12, returnShape := (Flapjack.Shape.one) }
def globalOutput463 := Pancake.PanLang.declToHOL globalData463
end InitECandidate.Proofs.FrontendStages.Declarations

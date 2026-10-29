import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify447
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body463_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "avail"
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "buf_len", Flapjack.Exp.var Flapjack.VarKind.local "start"])

def body463_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "avail" (Flapjack.Exp.var Flapjack.VarKind.local "size")

def body463_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body463_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "size")
  (Flapjack.Exp.var Flapjack.VarKind.local "avail")) body463_1 body463_2

def body463_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.var Flapjack.VarKind.local "start"],
    Flapjack.Exp.var Flapjack.VarKind.local "avail"]

def body463_5 : Prog (BitVec 64) :=
.seq body463_3 body463_4

def body463_6 : Prog (BitVec 64) :=
.seq body463_0 body463_5

def body463_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "start")
  (Flapjack.Exp.var Flapjack.VarKind.local "buf_len")) body463_6 body463_2

def body463_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "avail"],
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "size", Flapjack.Exp.var Flapjack.VarKind.local "avail"]]

def body463_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body463_10 : Prog (BitVec 64) :=
.seq body463_8 body463_9

def body463_11 : Prog (BitVec 64) :=
.seq body463_7 body463_10

def body463_12 : Prog (BitVec 64) :=
.dec ("avail") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body463_11

def body463_13 : Prog (BitVec 64) :=
.seq body463_0 body463_3

def body463_14 : Prog (BitVec 64) :=
.seq body463_13 body463_4

def body463_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "start")
  (Flapjack.Exp.var Flapjack.VarKind.local "buf_len")) body463_14 body463_2

def body463_16 : Prog (BitVec 64) :=
.seq body463_15 body463_8

def body463_17 : Prog (BitVec 64) :=
.seq body463_16 body463_9

def body463_18 : Prog (BitVec 64) :=
.dec ("avail") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body463_17

def originalData463 : Decl (BitVec 64) :=
.function { name := "buffer_read", inline := false, exported := false, params := [("buf", Flapjack.Shape.one), ("buf_len", Flapjack.Shape.one), ("start", Flapjack.Shape.one),
  ("size", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body463_12, returnShape := (Flapjack.Shape.one) }
def simplifiedData463 : Decl (BitVec 64) :=
.function { name := "buffer_read", inline := false, exported := false, params := [("buf", Flapjack.Shape.one), ("buf_len", Flapjack.Shape.one), ("start", Flapjack.Shape.one),
  ("size", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body463_18, returnShape := (Flapjack.Shape.one) }
def original463 := Pancake.PanLang.declToHOL originalData463
def simplified463 := Pancake.PanLang.declToHOL simplifiedData463
end InitECandidate.Proofs.FrontendStages.Declarations

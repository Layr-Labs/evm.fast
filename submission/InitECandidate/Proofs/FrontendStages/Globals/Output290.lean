import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data290
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate274
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody290_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst") (Flapjack.Exp.const 128#64)

def globalBody290_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody290_2 : Prog (BitVec 64) :=
.seq globalBody290_0 globalBody290_1

def globalBody290_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody290_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "child") (Flapjack.Exp.const 0#64)) globalBody290_2 globalBody290_3

def globalBody290_5 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst") (Flapjack.Exp.const 160#64)

def globalBody290_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 1#64],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.const 32#64]

def globalBody290_7 : Prog (BitVec 64) :=
.seq globalBody290_5 globalBody290_6

def globalBody290_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 33#64)

def globalBody290_9 : Prog (BitVec 64) :=
.seq globalBody290_7 globalBody290_8

def globalBody290_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 0#64)) globalBody290_9 globalBody290_3

def globalBody290_11 : Prog (BitVec 64) :=
.seq globalBody290_4 globalBody290_10

def globalBody290_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 13#64]

def globalBody290_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 8#64]))
  (Flapjack.Exp.const 0#64)) globalBody290_12 globalBody290_3

def globalBody290_14 : Prog (BitVec 64) :=
.seq globalBody290_11 globalBody290_13

def globalBody290_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "rp",
    Flapjack.Exp.var Flapjack.VarKind.local "rl"]

def globalBody290_16 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "rl")

def globalBody290_17 : Prog (BitVec 64) :=
.seq globalBody290_15 globalBody290_16

def globalBody290_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "rl") (Flapjack.Exp.const 32#64)) globalBody290_17 globalBody290_3

def globalBody290_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 32#64]

def globalBody290_20 : Prog (BitVec 64) :=
.seq globalBody290_5 globalBody290_19

def globalBody290_21 : Prog (BitVec 64) :=
.seq globalBody290_20 globalBody290_8

def globalBody290_22 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("node_hash_cached") ([Flapjack.Exp.var Flapjack.VarKind.local "child"]) globalBody290_21

def globalBody290_23 : Prog (BitVec 64) :=
.seq globalBody290_18 globalBody290_22

def globalBody290_24 : Prog (BitVec 64) :=
.dec ("rl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 16#64])) globalBody290_23

def globalBody290_25 : Prog (BitVec 64) :=
.dec ("rp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 8#64])) globalBody290_24

def globalBody290_26 : Prog (BitVec 64) :=
.seq globalBody290_14 globalBody290_25

def globalData290 : Decl (BitVec 64) :=
.function { name := "node_write_ref", inline := false, exported := false, params := [("child", Flapjack.Shape.one), ("dst", Flapjack.Shape.one)], body := globalBody290_26, returnShape := (Flapjack.Shape.one) }
def globalOutput290 := Pancake.PanLang.declToHOL globalData290
end InitECandidate.Proofs.FrontendStages.Declarations

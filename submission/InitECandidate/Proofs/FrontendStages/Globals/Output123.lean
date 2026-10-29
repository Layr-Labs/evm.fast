import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data123
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate107
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody123_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst") (Flapjack.Exp.var Flapjack.VarKind.local "b")

def globalBody123_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody123_2 : Prog (BitVec 64) :=
.seq globalBody123_0 globalBody123_1

def globalBody123_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody123_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "b") (Flapjack.Exp.const 128#64)) globalBody123_2 globalBody123_3

def globalBody123_5 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "src")) globalBody123_4

def globalBody123_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 1#64)) globalBody123_5 globalBody123_3

def globalBody123_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "h"],
    Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "n"]

def globalBody123_8 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "n"])

def globalBody123_9 : Prog (BitVec 64) :=
.seq globalBody123_7 globalBody123_8

def globalBody123_10 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("rlp_write_header") ([Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 128#64, Flapjack.Exp.var Flapjack.VarKind.local "n"]) globalBody123_9

def globalBody123_11 : Prog (BitVec 64) :=
.seq globalBody123_6 globalBody123_10

def globalData123 : Decl (BitVec 64) :=
.function { name := "rlp_encode_bytes", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("src", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := globalBody123_11, returnShape := (Flapjack.Shape.one) }
def globalOutput123 := Pancake.PanLang.declToHOL globalData123
end InitECandidate.Proofs.FrontendStages.Declarations

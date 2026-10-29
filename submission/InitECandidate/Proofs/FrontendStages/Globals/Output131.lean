import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data131
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate115
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody131_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64],
      Flapjack.Exp.var Flapjack.VarKind.local "j"])

def globalBody131_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody131_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x")
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 7#64, Flapjack.Exp.var Flapjack.VarKind.local "j"]),
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 0#64)) globalBody131_0 globalBody131_1

def globalBody131_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def globalBody131_4 : Prog (BitVec 64) :=
.seq globalBody131_2 globalBody131_3

def globalBody131_5 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 8#64)) globalBody131_4

def globalBody131_6 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody131_5

def globalBody131_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 0#64)) globalBody131_6 globalBody131_1

def globalBody131_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody131_9 : Prog (BitVec 64) :=
.seq globalBody131_7 globalBody131_8

def globalBody131_10 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.loadByte
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "i"]),
    Flapjack.Exp.loadByte
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "i"])]) globalBody131_9

def globalBody131_11 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "key_len")) globalBody131_10

def globalBody131_12 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "key_len", Flapjack.Exp.const 8#64])

def globalBody131_13 : Prog (BitVec 64) :=
.seq globalBody131_11 globalBody131_12

def globalBody131_14 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody131_13

def globalData131 : Decl (BitVec 64) :=
.function { name := "htab_first_diff", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one), ("key_len", Flapjack.Shape.one)], body := globalBody131_14, returnShape := (Flapjack.Shape.one) }
def globalOutput131 := Pancake.PanLang.declToHOL globalData131
end InitECandidate.Proofs.FrontendStages.Declarations

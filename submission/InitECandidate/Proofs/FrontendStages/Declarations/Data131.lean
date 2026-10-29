import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify115
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body131_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64],
      Flapjack.Exp.var Flapjack.VarKind.local "j"])

def body131_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body131_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x")
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 7#64, Flapjack.Exp.var Flapjack.VarKind.local "j"]),
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 0#64)) body131_0 body131_1

def body131_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body131_4 : Prog (BitVec 64) :=
.seq body131_2 body131_3

def body131_5 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 8#64)) body131_4

def body131_6 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body131_5

def body131_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 0#64)) body131_6 body131_1

def body131_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body131_9 : Prog (BitVec 64) :=
.seq body131_7 body131_8

def body131_10 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor
  [Flapjack.Exp.loadByte
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "i"]),
    Flapjack.Exp.loadByte
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "i"])]) body131_9

def body131_11 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "key_len")) body131_10

def body131_12 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "key_len", Flapjack.Exp.const 8#64])

def body131_13 : Prog (BitVec 64) :=
.seq body131_11 body131_12

def body131_14 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body131_13

def originalData131 : Decl (BitVec 64) :=
.function { name := "htab_first_diff", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one), ("key_len", Flapjack.Shape.one)], body := body131_14, returnShape := (Flapjack.Shape.one) }
def simplifiedData131 : Decl (BitVec 64) :=
.function { name := "htab_first_diff", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one), ("key_len", Flapjack.Shape.one)], body := body131_14, returnShape := (Flapjack.Shape.one) }
def original131 := Pancake.PanLang.declToHOL originalData131
def simplified131 := Pancake.PanLang.declToHOL simplifiedData131
end InitECandidate.Proofs.FrontendStages.Declarations

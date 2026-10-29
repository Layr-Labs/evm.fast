import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data281
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate265
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody281_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "root"), none)) "_mpt_delete_node"
  [Flapjack.Exp.var Flapjack.VarKind.local "root", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "nk"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "nk"), Flapjack.Exp.const 0#64]

def globalBody281_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "root"), none)) "_mpt_insert_node"
  [Flapjack.Exp.var Flapjack.VarKind.local "root", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "nk"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "nk"), Flapjack.Exp.const 0#64,
    Flapjack.Exp.var Flapjack.VarKind.local "vptr", Flapjack.Exp.var Flapjack.VarKind.local "vlen"]

def globalBody281_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "vptr") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "vlen") (Flapjack.Exp.const 0#64)])) globalBody281_0 globalBody281_1

def globalBody281_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "root")

def globalBody281_4 : Prog (BitVec 64) :=
.seq globalBody281_2 globalBody281_3

def globalBody281_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody281_6 : Prog (BitVec 64) :=
.seq globalBody281_4 globalBody281_5

def globalBody281_7 : Prog (BitVec 64) :=
.dec ("root") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 0#64])) globalBody281_6

def globalBody281_8 : Prog (BitVec 64) :=
.decCall ("nk") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mpt_nibble_key") ([Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.var Flapjack.VarKind.local "key",
  Flapjack.Exp.var Flapjack.VarKind.local "klen"]) globalBody281_7

def globalData281 : Decl (BitVec 64) :=
.function { name := "mpt_set", inline := false, exported := false, params := [("m", Flapjack.Shape.one), ("key", Flapjack.Shape.one), ("klen", Flapjack.Shape.one), ("vptr", Flapjack.Shape.one),
  ("vlen", Flapjack.Shape.one)], body := globalBody281_8, returnShape := (Flapjack.Shape.one) }
def globalOutput281 := Pancake.PanLang.declToHOL globalData281
end InitECandidate.Proofs.FrontendStages.Declarations

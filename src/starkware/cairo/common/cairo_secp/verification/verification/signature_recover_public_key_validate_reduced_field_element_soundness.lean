/-
File: signature_recover_public_key_validate_reduced_field_element_soundness.lean

Autogenerated file.
-/
import starkware.cairo.lean.semantics.soundness.hoare
import .signature_recover_public_key_code
import ..signature_recover_public_key_spec
import .signature_recover_public_key_assert_nn_le_soundness
open tactic

open starkware.cairo.common.cairo_secp.field
open starkware.cairo.common.cairo_secp.bigint
open starkware.cairo.common.math
open starkware.cairo.common.cairo_secp.constants

variables {F : Type} [field F] [decidable_eq F] [prelude_hyps F]
variable  mem : F → F
variable  σ : register_state F

/- starkware.cairo.common.cairo_secp.field.validate_reduced_field_element autogenerated soundness theorem -/

theorem auto_sound_validate_reduced_field_element
    -- arguments
    (range_check_ptr : F) (val : BigInt3 F)
    -- code is in memory at σ.pc
    (h_mem : mem_at mem code_validate_reduced_field_element σ.pc)
    -- all dependencies are in memory
    (h_mem_0 : mem_at mem code_assert_nn (σ.pc  - 152))
    (h_mem_1 : mem_at mem code_assert_le (σ.pc  - 148))
    (h_mem_2 : mem_at mem code_assert_nn_le (σ.pc  - 143))
    -- input arguments on the stack
    (hin_range_check_ptr : range_check_ptr = mem (σ.fp - 6))
    (hin_val : val = cast_BigInt3 mem (σ.fp - 5))
    -- conclusion
  : ensures_ret mem σ (λ κ τ,
      ∃ μ ≤ κ, rc_ensures mem (rc_bound F) μ (mem (σ.fp - 6)) (mem $ τ.ap - 1)
        (spec_validate_reduced_field_element mem κ range_check_ptr val (mem (τ.ap - 1)))) :=
begin
  apply ensures_of_ensuresb, intro νbound,
  have h_mem_rec := h_mem,
  unpack_memory code_validate_reduced_field_element at h_mem with ⟨hpc0, hpc1, hpc2, hpc3, hpc4, hpc5, hpc6, hpc7, hpc8, hpc9, hpc10, hpc11, hpc12, hpc13, hpc14, hpc15, hpc16, hpc17, hpc18, hpc19, hpc20, hpc21, hpc22, hpc23, hpc24, hpc25, hpc26, hpc27, hpc28, hpc29, hpc30, hpc31, hpc32, hpc33, hpc34, hpc35, hpc36, hpc37, hpc38, hpc39⟩,
  -- function call
  step_assert_eq hpc0 with arg0,
  step_assert_eq hpc1 with arg1,
  step_assert_eq hpc2 hpc3 with arg2,
  step_sub hpc4 (auto_sound_assert_nn_le mem _ range_check_ptr val.d2 P2 _ _ _ _ _ _),
  { rw hpc5, norm_num2, exact h_mem_2 },
  { rw hpc5, norm_num2, exact h_mem_0 },
  { rw hpc5, norm_num2, exact h_mem_1 },
  { try { simp only [add_neg_eq_sub, hin_range_check_ptr, hin_val] },
    try { dsimp [cast_BigInt3] },
    try { arith_simps }, try { simp only [arg0, arg1, arg2] },
    try { arith_simps; try { split }; triv <|> refl <|> simp <|> abel; try { norm_num } }, },
  { try { simp only [add_neg_eq_sub, hin_range_check_ptr, hin_val] },
    try { dsimp [cast_BigInt3] },
    try { arith_simps }, try { simp only [arg0, arg1, arg2] },
    try { arith_simps; try { split }; triv <|> refl <|> simp <|> abel; try { norm_num } }, },
  { try { simp only [add_neg_eq_sub, hin_range_check_ptr, hin_val] },
    try { dsimp [cast_BigInt3] },
    try { arith_simps }, try { simp only [arg0, arg1, arg2] },
    try { arith_simps; try { split }; triv <|> refl <|> simp <|> abel; try { norm_num } }, },
  intros κ_call6 ap6 h_call6,
  rcases h_call6 with ⟨h_call6_ap_offset, h_call6⟩,
  rcases h_call6 with ⟨rc_m6, rc_mle6, hl_range_check_ptr₁, h_call6⟩,
  generalize' hr_rev_range_check_ptr₁: mem (ap6 - 1) = range_check_ptr₁,
  have htv_range_check_ptr₁ := hr_rev_range_check_ptr₁.symm, clear hr_rev_range_check_ptr₁,
  try { simp only [arg0 ,arg1 ,arg2] at hl_range_check_ptr₁ },
  rw [←htv_range_check_ptr₁, ←hin_range_check_ptr] at hl_range_check_ptr₁,
  try { simp only [arg0 ,arg1 ,arg2] at h_call6 },
  rw [hin_range_check_ptr] at h_call6,
  clear arg0 arg1 arg2,
  -- function call
  step_assert_eq hpc6 with arg0,
  step_assert_eq hpc7 hpc8 with arg1,
  step_sub hpc9 (auto_sound_assert_nn_le mem _ range_check_ptr₁ val.d1 (BASE - 1) _ _ _ _ _ _),
  { rw hpc10, norm_num2, exact h_mem_2 },
  { rw hpc10, norm_num2, exact h_mem_0 },
  { rw hpc10, norm_num2, exact h_mem_1 },
  { try { simp only [add_neg_eq_sub, hin_range_check_ptr, hin_val, htv_range_check_ptr₁] },
    try { dsimp [cast_BigInt3] },
    try { arith_simps }, try { simp only [arg0, arg1] },
    try { simp only [h_call6_ap_offset] },
    try { arith_simps; try { split }; triv <|> refl <|> simp <|> abel; try { norm_num } }, },
  { try { simp only [add_neg_eq_sub, hin_range_check_ptr, hin_val, htv_range_check_ptr₁] },
    try { dsimp [cast_BigInt3] },
    try { arith_simps }, try { simp only [arg0, arg1] },
    try { simp only [h_call6_ap_offset] },
    try { arith_simps; try { split }; triv <|> refl <|> simp <|> abel; try { norm_num } }, },
  { try { simp only [add_neg_eq_sub, hin_range_check_ptr, hin_val, htv_range_check_ptr₁] },
    try { dsimp [cast_BigInt3] },
    try { arith_simps }, try { simp only [arg0, arg1] },
    try { simp only [h_call6_ap_offset] },
    try { arith_simps; try { split }; triv <|> refl <|> simp <|> abel; try { norm_num } }, },
  intros κ_call11 ap11 h_call11,
  rcases h_call11 with ⟨h_call11_ap_offset, h_call11⟩,
  rcases h_call11 with ⟨rc_m11, rc_mle11, hl_range_check_ptr₂, h_call11⟩,
  generalize' hr_rev_range_check_ptr₂: mem (ap11 - 1) = range_check_ptr₂,
  have htv_range_check_ptr₂ := hr_rev_range_check_ptr₂.symm, clear hr_rev_range_check_ptr₂,
  try { simp only [arg0 ,arg1] at hl_range_check_ptr₂ },
  rw [←htv_range_check_ptr₂, ←htv_range_check_ptr₁] at hl_range_check_ptr₂,
  try { simp only [arg0 ,arg1] at h_call11 },
  rw [←htv_range_check_ptr₁, hl_range_check_ptr₁, hin_range_check_ptr] at h_call11,
  clear arg0 arg1,
  -- function call
  step_assert_eq hpc11 with arg0,
  step_assert_eq hpc12 hpc13 with arg1,
  step_sub hpc14 (auto_sound_assert_nn_le mem _ range_check_ptr₂ val.d0 (BASE - 1) _ _ _ _ _ _),
  { rw hpc15, norm_num2, exact h_mem_2 },
  { rw hpc15, norm_num2, exact h_mem_0 },
  { rw hpc15, norm_num2, exact h_mem_1 },
  { try { simp only [add_neg_eq_sub, hin_range_check_ptr, hin_val, htv_range_check_ptr₁, htv_range_check_ptr₂] },
    try { dsimp [cast_BigInt3] },
    try { arith_simps }, try { simp only [arg0, arg1] },
    try { simp only [h_call6_ap_offset, h_call11_ap_offset] },
    try { arith_simps; try { split }; triv <|> refl <|> simp <|> abel; try { norm_num } }, },
  { try { simp only [add_neg_eq_sub, hin_range_check_ptr, hin_val, htv_range_check_ptr₁, htv_range_check_ptr₂] },
    try { dsimp [cast_BigInt3] },
    try { arith_simps }, try { simp only [arg0, arg1] },
    try { simp only [h_call6_ap_offset, h_call11_ap_offset] },
    try { arith_simps; try { split }; triv <|> refl <|> simp <|> abel; try { norm_num } }, },
  { try { simp only [add_neg_eq_sub, hin_range_check_ptr, hin_val, htv_range_check_ptr₁, htv_range_check_ptr₂] },
    try { dsimp [cast_BigInt3] },
    try { arith_simps }, try { simp only [arg0, arg1] },
    try { simp only [h_call6_ap_offset, h_call11_ap_offset] },
    try { arith_simps; try { split }; triv <|> refl <|> simp <|> abel; try { norm_num } }, },
  intros κ_call16 ap16 h_call16,
  rcases h_call16 with ⟨h_call16_ap_offset, h_call16⟩,
  rcases h_call16 with ⟨rc_m16, rc_mle16, hl_range_check_ptr₃, h_call16⟩,
  generalize' hr_rev_range_check_ptr₃: mem (ap16 - 1) = range_check_ptr₃,
  have htv_range_check_ptr₃ := hr_rev_range_check_ptr₃.symm, clear hr_rev_range_check_ptr₃,
  try { simp only [arg0 ,arg1] at hl_range_check_ptr₃ },
  rw [←htv_range_check_ptr₃, ←htv_range_check_ptr₂] at hl_range_check_ptr₃,
  try { simp only [arg0 ,arg1] at h_call16 },
  rw [←htv_range_check_ptr₂, hl_range_check_ptr₂, hl_range_check_ptr₁, hin_range_check_ptr] at h_call16,
  clear arg0 arg1,
  -- if statement
  step_assert_eq hpc16 hpc17 with temp0,
  have htest: _ = val.d2 - P2, {
    apply eq.trans temp0,
    try { simp only [add_neg_eq_sub, hin_range_check_ptr, hin_val, htv_range_check_ptr₁, htv_range_check_ptr₂, htv_range_check_ptr₃] },
    try { dsimp [cast_BigInt3] },
    try { simp only [h_call6_ap_offset, h_call11_ap_offset, h_call16_ap_offset] },
    try { arith_simps; try { split }; triv <|> refl <|> simp <|> abel; try { norm_num } }, },
  clear temp0,
  step_jnz hpc18 hpc19 with hcond hcond,
  {
    -- if: positive branch
    have a16 := cond_aux1 htest hcond,
    try { arith_simps at a16 },
    clear htest hcond,
    -- if statement
    step_assert_eq hpc20 hpc21 with temp0,
    have htest: _ = val.d1 - P1, {
      apply eq.trans temp0,
      try { simp only [add_neg_eq_sub, hin_range_check_ptr, hin_val, htv_range_check_ptr₁, htv_range_check_ptr₂, htv_range_check_ptr₃] },
      try { dsimp [cast_BigInt3] },
      try { simp only [h_call6_ap_offset, h_call11_ap_offset, h_call16_ap_offset] },
      try { arith_simps; try { split }; triv <|> refl <|> simp <|> abel; try { norm_num } }, },
    clear temp0,
    step_jnz hpc22 hpc23 with hcond hcond,
    {
      -- if: positive branch
      have a20 := cond_aux1 htest hcond,
      try { arith_simps at a20 },
      clear htest hcond,
      -- function call
      step_assert_eq hpc24 with arg0,
      step_assert_eq hpc25 with arg1,
      step_assert_eq hpc26 hpc27 with arg2,
      step_sub hpc28 (auto_sound_assert_nn_le mem _ range_check_ptr₃ val.d0 (P0 - 1) _ _ _ _ _ _),
      { rw hpc29, norm_num2, exact h_mem_2 },
      { rw hpc29, norm_num2, exact h_mem_0 },
      { rw hpc29, norm_num2, exact h_mem_1 },
      { try { simp only [add_neg_eq_sub, hin_range_check_ptr, hin_val, htv_range_check_ptr₁, htv_range_check_ptr₂, htv_range_check_ptr₃] },
        try { dsimp [cast_BigInt3] },
        try { arith_simps }, try { simp only [arg0, arg1, arg2] },
        try { simp only [h_call6_ap_offset, h_call11_ap_offset, h_call16_ap_offset] },
        try { arith_simps; try { split }; triv <|> refl <|> simp <|> abel; try { norm_num } }, },
      { try { simp only [add_neg_eq_sub, hin_range_check_ptr, hin_val, htv_range_check_ptr₁, htv_range_check_ptr₂, htv_range_check_ptr₃] },
        try { dsimp [cast_BigInt3] },
        try { arith_simps }, try { simp only [arg0, arg1, arg2] },
        try { simp only [h_call6_ap_offset, h_call11_ap_offset, h_call16_ap_offset] },
        try { arith_simps; try { split }; triv <|> refl <|> simp <|> abel; try { norm_num } }, },
      { try { simp only [add_neg_eq_sub, hin_range_check_ptr, hin_val, htv_range_check_ptr₁, htv_range_check_ptr₂, htv_range_check_ptr₃] },
        try { dsimp [cast_BigInt3] },
        try { arith_simps }, try { simp only [arg0, arg1, arg2] },
        try { simp only [h_call6_ap_offset, h_call11_ap_offset, h_call16_ap_offset] },
        try { arith_simps; try { split }; triv <|> refl <|> simp <|> abel; try { norm_num } }, },
      intros κ_call30 ap30 h_call30,
      rcases h_call30 with ⟨h_call30_ap_offset, h_call30⟩,
      rcases h_call30 with ⟨rc_m30, rc_mle30, hl_range_check_ptr₄, h_call30⟩,
      generalize' hr_rev_range_check_ptr₄: mem (ap30 - 1) = range_check_ptr₄,
      have htv_range_check_ptr₄ := hr_rev_range_check_ptr₄.symm, clear hr_rev_range_check_ptr₄,
      try { simp only [arg0 ,arg1 ,arg2] at hl_range_check_ptr₄ },
      rw [←htv_range_check_ptr₄, ←htv_range_check_ptr₃] at hl_range_check_ptr₄,
      try { simp only [arg0 ,arg1 ,arg2] at h_call30 },
      rw [←htv_range_check_ptr₃, hl_range_check_ptr₃, hl_range_check_ptr₂, hl_range_check_ptr₁, hin_range_check_ptr] at h_call30,
      clear arg0 arg1 arg2,
      -- return
      step_ret hpc30,
      -- finish
      step_done, use_only [rfl, rfl],
      -- range check condition
      use_only (rc_m6+rc_m11+rc_m16+rc_m30+0+0), split,
      linarith [rc_mle6, rc_mle11, rc_mle16, rc_mle30],
      split,
      { arith_simps,
        rw [←htv_range_check_ptr₄, hl_range_check_ptr₄, hl_range_check_ptr₃, hl_range_check_ptr₂, hl_range_check_ptr₁, hin_range_check_ptr],
        try { arith_simps, refl <|> norm_cast }, try { refl } },
      intro rc_h_range_check_ptr, repeat { rw [add_assoc] at rc_h_range_check_ptr },
      have rc_h_range_check_ptr' := range_checked_add_right rc_h_range_check_ptr,
      -- Final Proof
      -- user-provided reduction
      suffices auto_spec: auto_spec_validate_reduced_field_element mem _ range_check_ptr val _,
      { apply sound_validate_reduced_field_element, apply auto_spec },
      -- prove the auto generated assertion
      dsimp [auto_spec_validate_reduced_field_element],
      try { norm_num1 }, try { arith_simps },
      use_only [κ_call6],
      use_only [range_check_ptr₁],
      have rc_h_range_check_ptr₁ := range_checked_offset' rc_h_range_check_ptr,
      have rc_h_range_check_ptr₁' := range_checked_add_right rc_h_range_check_ptr₁, try { norm_cast at rc_h_range_check_ptr₁' },
      have spec6 := h_call6 rc_h_range_check_ptr',
      rw [←hin_range_check_ptr, ←htv_range_check_ptr₁] at spec6,
      try { dsimp at spec6, arith_simps at spec6 },
      use_only [spec6],
      use_only [κ_call11],
      use_only [range_check_ptr₂],
      have rc_h_range_check_ptr₂ := range_checked_offset' rc_h_range_check_ptr₁,
      have rc_h_range_check_ptr₂' := range_checked_add_right rc_h_range_check_ptr₂, try { norm_cast at rc_h_range_check_ptr₂' },
      have spec11 := h_call11 rc_h_range_check_ptr₁',
      rw [←hin_range_check_ptr, ←hl_range_check_ptr₁, ←htv_range_check_ptr₂] at spec11,
      try { dsimp at spec11, arith_simps at spec11 },
      use_only [spec11],
      use_only [κ_call16],
      use_only [range_check_ptr₃],
      have rc_h_range_check_ptr₃ := range_checked_offset' rc_h_range_check_ptr₂,
      have rc_h_range_check_ptr₃' := range_checked_add_right rc_h_range_check_ptr₃, try { norm_cast at rc_h_range_check_ptr₃' },
      have spec16 := h_call16 rc_h_range_check_ptr₂',
      rw [←hin_range_check_ptr, ←hl_range_check_ptr₁, ←hl_range_check_ptr₂, ←htv_range_check_ptr₃] at spec16,
      try { dsimp at spec16, arith_simps at spec16 },
      use_only [spec16],
      left,
      use_only [a16],
      left,
      use_only [a20],
      use_only [κ_call30],
      use_only [range_check_ptr₄],
      have rc_h_range_check_ptr₄ := range_checked_offset' rc_h_range_check_ptr₃,
      have rc_h_range_check_ptr₄' := range_checked_add_right rc_h_range_check_ptr₄, try { norm_cast at rc_h_range_check_ptr₄' },
      have spec30 := h_call30 rc_h_range_check_ptr₃',
      rw [←hin_range_check_ptr, ←hl_range_check_ptr₁, ←hl_range_check_ptr₂, ←hl_range_check_ptr₃, ←htv_range_check_ptr₄] at spec30,
      try { dsimp at spec30, arith_simps at spec30 },
      use_only [spec30],
      try { split, linarith },
      try { ensures_simps; try { simp only [add_neg_eq_sub, hin_range_check_ptr, hin_val, htv_range_check_ptr₁, htv_range_check_ptr₂, htv_range_check_ptr₃, htv_range_check_ptr₄] }, },
      try { dsimp [cast_BigInt3] },
      try { simp only [h_call6_ap_offset, h_call11_ap_offset, h_call16_ap_offset, h_call30_ap_offset] },
      try { arith_simps; try { split }; triv <|> refl <|> simp <|> abel; try { norm_num } },
    },
    {
      -- if: negative branch
      have a20 := cond_aux2 htest hcond,
      try { arith_simps at a20 },
      clear htest hcond,
      -- function call
      step_assert_eq hpc31 with arg0,
      step_assert_eq hpc32 with arg1,
      step_assert_eq hpc33 hpc34 with arg2,
      step_sub hpc35 (auto_sound_assert_nn_le mem _ range_check_ptr₃ val.d1 (P1 - 1) _ _ _ _ _ _),
      { rw hpc36, norm_num2, exact h_mem_2 },
      { rw hpc36, norm_num2, exact h_mem_0 },
      { rw hpc36, norm_num2, exact h_mem_1 },
      { try { simp only [add_neg_eq_sub, hin_range_check_ptr, hin_val, htv_range_check_ptr₁, htv_range_check_ptr₂, htv_range_check_ptr₃] },
        try { dsimp [cast_BigInt3] },
        try { arith_simps }, try { simp only [arg0, arg1, arg2] },
        try { simp only [h_call6_ap_offset, h_call11_ap_offset, h_call16_ap_offset] },
        try { arith_simps; try { split }; triv <|> refl <|> simp <|> abel; try { norm_num } }, },
      { try { simp only [add_neg_eq_sub, hin_range_check_ptr, hin_val, htv_range_check_ptr₁, htv_range_check_ptr₂, htv_range_check_ptr₃] },
        try { dsimp [cast_BigInt3] },
        try { arith_simps }, try { simp only [arg0, arg1, arg2] },
        try { simp only [h_call6_ap_offset, h_call11_ap_offset, h_call16_ap_offset] },
        try { arith_simps; try { split }; triv <|> refl <|> simp <|> abel; try { norm_num } }, },
      { try { simp only [add_neg_eq_sub, hin_range_check_ptr, hin_val, htv_range_check_ptr₁, htv_range_check_ptr₂, htv_range_check_ptr₃] },
        try { dsimp [cast_BigInt3] },
        try { arith_simps }, try { simp only [arg0, arg1, arg2] },
        try { simp only [h_call6_ap_offset, h_call11_ap_offset, h_call16_ap_offset] },
        try { arith_simps; try { split }; triv <|> refl <|> simp <|> abel; try { norm_num } }, },
      intros κ_call37 ap37 h_call37,
      rcases h_call37 with ⟨h_call37_ap_offset, h_call37⟩,
      rcases h_call37 with ⟨rc_m37, rc_mle37, hl_range_check_ptr₄, h_call37⟩,
      generalize' hr_rev_range_check_ptr₄: mem (ap37 - 1) = range_check_ptr₄,
      have htv_range_check_ptr₄ := hr_rev_range_check_ptr₄.symm, clear hr_rev_range_check_ptr₄,
      try { simp only [arg0 ,arg1 ,arg2] at hl_range_check_ptr₄ },
      rw [←htv_range_check_ptr₄, ←htv_range_check_ptr₃] at hl_range_check_ptr₄,
      try { simp only [arg0 ,arg1 ,arg2] at h_call37 },
      rw [←htv_range_check_ptr₃, hl_range_check_ptr₃, hl_range_check_ptr₂, hl_range_check_ptr₁, hin_range_check_ptr] at h_call37,
      clear arg0 arg1 arg2,
      -- return
      step_ret hpc37,
      -- finish
      step_done, use_only [rfl, rfl],
      -- range check condition
      use_only (rc_m6+rc_m11+rc_m16+rc_m37+0+0), split,
      linarith [rc_mle6, rc_mle11, rc_mle16, rc_mle37],
      split,
      { arith_simps,
        rw [←htv_range_check_ptr₄, hl_range_check_ptr₄, hl_range_check_ptr₃, hl_range_check_ptr₂, hl_range_check_ptr₁, hin_range_check_ptr],
        try { arith_simps, refl <|> norm_cast }, try { refl } },
      intro rc_h_range_check_ptr, repeat { rw [add_assoc] at rc_h_range_check_ptr },
      have rc_h_range_check_ptr' := range_checked_add_right rc_h_range_check_ptr,
      -- Final Proof
      -- user-provided reduction
      suffices auto_spec: auto_spec_validate_reduced_field_element mem _ range_check_ptr val _,
      { apply sound_validate_reduced_field_element, apply auto_spec },
      -- prove the auto generated assertion
      dsimp [auto_spec_validate_reduced_field_element],
      try { norm_num1 }, try { arith_simps },
      use_only [κ_call6],
      use_only [range_check_ptr₁],
      have rc_h_range_check_ptr₁ := range_checked_offset' rc_h_range_check_ptr,
      have rc_h_range_check_ptr₁' := range_checked_add_right rc_h_range_check_ptr₁, try { norm_cast at rc_h_range_check_ptr₁' },
      have spec6 := h_call6 rc_h_range_check_ptr',
      rw [←hin_range_check_ptr, ←htv_range_check_ptr₁] at spec6,
      try { dsimp at spec6, arith_simps at spec6 },
      use_only [spec6],
      use_only [κ_call11],
      use_only [range_check_ptr₂],
      have rc_h_range_check_ptr₂ := range_checked_offset' rc_h_range_check_ptr₁,
      have rc_h_range_check_ptr₂' := range_checked_add_right rc_h_range_check_ptr₂, try { norm_cast at rc_h_range_check_ptr₂' },
      have spec11 := h_call11 rc_h_range_check_ptr₁',
      rw [←hin_range_check_ptr, ←hl_range_check_ptr₁, ←htv_range_check_ptr₂] at spec11,
      try { dsimp at spec11, arith_simps at spec11 },
      use_only [spec11],
      use_only [κ_call16],
      use_only [range_check_ptr₃],
      have rc_h_range_check_ptr₃ := range_checked_offset' rc_h_range_check_ptr₂,
      have rc_h_range_check_ptr₃' := range_checked_add_right rc_h_range_check_ptr₃, try { norm_cast at rc_h_range_check_ptr₃' },
      have spec16 := h_call16 rc_h_range_check_ptr₂',
      rw [←hin_range_check_ptr, ←hl_range_check_ptr₁, ←hl_range_check_ptr₂, ←htv_range_check_ptr₃] at spec16,
      try { dsimp at spec16, arith_simps at spec16 },
      use_only [spec16],
      left,
      use_only [a16],
      right,
      use_only [a20],
      use_only [κ_call37],
      use_only [range_check_ptr₄],
      have rc_h_range_check_ptr₄ := range_checked_offset' rc_h_range_check_ptr₃,
      have rc_h_range_check_ptr₄' := range_checked_add_right rc_h_range_check_ptr₄, try { norm_cast at rc_h_range_check_ptr₄' },
      have spec37 := h_call37 rc_h_range_check_ptr₃',
      rw [←hin_range_check_ptr, ←hl_range_check_ptr₁, ←hl_range_check_ptr₂, ←hl_range_check_ptr₃, ←htv_range_check_ptr₄] at spec37,
      try { dsimp at spec37, arith_simps at spec37 },
      use_only [spec37],
      try { split, linarith },
      try { ensures_simps; try { simp only [add_neg_eq_sub, hin_range_check_ptr, hin_val, htv_range_check_ptr₁, htv_range_check_ptr₂, htv_range_check_ptr₃, htv_range_check_ptr₄] }, },
      try { dsimp [cast_BigInt3] },
      try { simp only [h_call6_ap_offset, h_call11_ap_offset, h_call16_ap_offset, h_call37_ap_offset] },
      try { arith_simps; try { split }; triv <|> refl <|> simp <|> abel; try { norm_num } },
    }
  },
  {
    -- if: negative branch
    have a16 := cond_aux2 htest hcond,
    try { arith_simps at a16 },
    clear htest hcond,
    -- return
    step_assert_eq hpc38 with hret0,
    step_ret hpc39,
    -- finish
    step_done, use_only [rfl, rfl],
    -- range check condition
    use_only (rc_m6+rc_m11+rc_m16+0+0), split,
    linarith [rc_mle6, rc_mle11, rc_mle16],
    split,
    { arith_simps, try { simp only [hret0] },
      rw [←htv_range_check_ptr₃, hl_range_check_ptr₃, hl_range_check_ptr₂, hl_range_check_ptr₁, hin_range_check_ptr],
      try { arith_simps, refl <|> norm_cast }, try { refl } },
    intro rc_h_range_check_ptr, repeat { rw [add_assoc] at rc_h_range_check_ptr },
    have rc_h_range_check_ptr' := range_checked_add_right rc_h_range_check_ptr,
    -- Final Proof
    -- user-provided reduction
    suffices auto_spec: auto_spec_validate_reduced_field_element mem _ range_check_ptr val _,
    { apply sound_validate_reduced_field_element, apply auto_spec },
    -- prove the auto generated assertion
    dsimp [auto_spec_validate_reduced_field_element],
    try { norm_num1 }, try { arith_simps },
    use_only [κ_call6],
    use_only [range_check_ptr₁],
    have rc_h_range_check_ptr₁ := range_checked_offset' rc_h_range_check_ptr,
    have rc_h_range_check_ptr₁' := range_checked_add_right rc_h_range_check_ptr₁, try { norm_cast at rc_h_range_check_ptr₁' },
    have spec6 := h_call6 rc_h_range_check_ptr',
    rw [←hin_range_check_ptr, ←htv_range_check_ptr₁] at spec6,
    try { dsimp at spec6, arith_simps at spec6 },
    use_only [spec6],
    use_only [κ_call11],
    use_only [range_check_ptr₂],
    have rc_h_range_check_ptr₂ := range_checked_offset' rc_h_range_check_ptr₁,
    have rc_h_range_check_ptr₂' := range_checked_add_right rc_h_range_check_ptr₂, try { norm_cast at rc_h_range_check_ptr₂' },
    have spec11 := h_call11 rc_h_range_check_ptr₁',
    rw [←hin_range_check_ptr, ←hl_range_check_ptr₁, ←htv_range_check_ptr₂] at spec11,
    try { dsimp at spec11, arith_simps at spec11 },
    use_only [spec11],
    use_only [κ_call16],
    use_only [range_check_ptr₃],
    have rc_h_range_check_ptr₃ := range_checked_offset' rc_h_range_check_ptr₂,
    have rc_h_range_check_ptr₃' := range_checked_add_right rc_h_range_check_ptr₃, try { norm_cast at rc_h_range_check_ptr₃' },
    have spec16 := h_call16 rc_h_range_check_ptr₂',
    rw [←hin_range_check_ptr, ←hl_range_check_ptr₁, ←hl_range_check_ptr₂, ←htv_range_check_ptr₃] at spec16,
    try { dsimp at spec16, arith_simps at spec16 },
    use_only [spec16],
    right,
    use_only [a16],
    try { split, linarith },
    try { ensures_simps; try { simp only [add_neg_eq_sub, hin_range_check_ptr, hin_val, htv_range_check_ptr₁, htv_range_check_ptr₂, htv_range_check_ptr₃] }, },
    try { dsimp [cast_BigInt3] },
    try { arith_simps }, try { simp only [hret0] },
    try { simp only [h_call6_ap_offset, h_call11_ap_offset, h_call16_ap_offset] },
    try { arith_simps; try { split }; triv <|> refl <|> simp <|> abel; try { norm_num } },
  }
end


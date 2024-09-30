import { createClient } from "@supabase/supabase-js";

// exec supabase query
async function execSupabaseQuery() {
  const supabase = createClient(process.env.SUPABASE_URL!, process.env.SUPABASE_KEY!);
  const { data, error } = await supabase.from("users").select("*");
  console.log(data);
}

execSupabaseQuery();
